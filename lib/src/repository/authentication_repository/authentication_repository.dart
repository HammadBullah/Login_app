import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:login_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_app/src/features/authentication/screens/welcome/welcome_secreen.dart';
import 'package:login_app/src/features/core/screen/dashboard/dashboard.dart';
import 'package:login_app/src/repository/authentication_repository/exceptions/signin_email_password_failure.dart';
import 'package:login_app/src/repository/authentication_repository/exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final auth = FirebaseAuth.instance;
  late Rx<User?> firebaseUser;
  var verificationId = '';



  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 0));
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
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

    await auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credentials) async {
        await auth.signInWithCredential(credentials);
      },
      verificationFailed: (e) {
        if (e.code == "invalid-phone-number") {
          Get.snackbar('Error', 'The provided phone number is not valid.');
        } else {
          Get.snackbar('Error', 'Something went wrong. Try again.');
        }
      },
      codeSent: (verificationId, resendToken) {
        this.verificationId = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
      },
      forceResendingToken: null,
    );
  }

  Future<bool> verifyOTP(String otp) async {

     var credentials = await auth.signInWithCredential(PhoneAuthProvider.credential(
        verificationId: this.verificationId, smsCode: otp));
     return credentials.user!= null ? true : false;
  }

  Future<bool> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      // If the userCredential is not null, the sign-in was successful.
      bool isSignedIn = userCredential.user != null;

      // Return true indicating a successful sign-in
      return isSignedIn;
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
  Future<bool> signInWithEmailAndPassword(
      String email, String password) async {
    print('Email: $email, Password: $password');
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      // If the userCredential is not null, the sign-in was successful.
      bool isSignedIn = userCredential.user != null;

      // Return true indicating a successful sign-in
      return isSignedIn;
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
    Future<void> logout() async => await auth.signOut();

  }
