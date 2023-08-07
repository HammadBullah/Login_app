import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:login_app/src/repository/authentication_repository/exceptions/signin_email_password_failure.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final showPassword = false.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  final isLoading = false.obs;
  final isGoogleLoading = false.obs;

  Future<void> login() async{
    try{
      isLoading.value = true;
      if (!loginFormKey.currentState!.validate()) {
        isLoading.value = false;
        return;
      }
      final auth = AuthenticationRepository.instance;
      await auth.loginWithEmailAndPassword(email.text.trim(), password.text.trim());
      auth.setInitialScreen(auth.firebaseUSer);
    }catch (e){
      isLoading.value = false;
      SignInWithEmailAndPasswordFailure();
    }
  }




}