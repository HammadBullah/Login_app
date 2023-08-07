import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:login_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_app/src/features/authentication/screens/welcome/welcome_secreen.dart';
import 'package:login_app/src/features/core/screen/dashboard/dashboard.dart';
import 'package:login_app/src/repository/authentication_repository/exceptions/signin_email_password_failure.dart';
import 'package:login_app/src/repository/authentication_repository/exceptions/signup_email_password_failure.dart';
import 'package:login_app/src/repository/authentication_repository/user_repository.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> _firebaseUser;
  final _phoneVerificationId = ''.obs;

  User? get firebaseUSer => _firebaseUser.value;
  String get UserID => firebaseUSer?.uid ?? "";
  String get getUserEmail => firebaseUSer?.email ?? "";

  final userRepo = Get.put(UserRepository());



  @override
  void onReady() {
    _firebaseUser = Rx<User?>(_auth.currentUser);
    _firebaseUser.bindStream(_auth.userChanges());
    setInitialScreen(_firebaseUser.value);
    //ever(_firebaseUser, setInitialScreen);
  }

  setInitialScreen(User? user) {
    if (user == null) {
      // If user is null, navigate to WelcomeScreen after a delay
      Future.delayed(Duration(seconds: 5), () {
        Get.offAll(() => OnBoardingScreen());
      });
    } else {
      // If user is not null, navigate to Dashboard immediately
      Get.offAll(() => const Dashboard());
    }
  }

  Future<void> phoneAuthentication(String phoneNo) async {

    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credentials) async {
        await _auth.signInWithCredential(credentials);
      },
      verificationFailed: (e) {
        if (e.code == "invalid-phone-number") {
          Get.snackbar('Error', 'The provided phone number is not valid.');
        } else {
          Get.snackbar('Error', 'Something went wrong. Try again.');
        }
      },
      codeSent: (verificationId, resendToken) {
        _phoneVerificationId.value = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
      },
      forceResendingToken: null,
    );
  }

  Future<bool> verifyOTP(String otp) async {

     var credentials = await _auth.signInWithCredential(PhoneAuthProvider.credential(
        verificationId: _phoneVerificationId.value, smsCode: otp));
     return credentials.user!= null ? true : false;
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      final ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }

    }
  Future<void> loginWithEmailAndPassword(
      String email, String password) async {
    print('Email: $email, Password: $password');
    try {
      _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = SignInWithEmailAndPasswordFailure(e.code);
      print('Firebase Authentication Error: ${e.code} - ${e.message}');
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (e) {
      print('Unexpected Error: $e');
      final ex = SignInWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }
    Future<void> logout() async => await _auth.signOut();
  }
