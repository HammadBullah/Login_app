import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';

class MailVerificationController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    sendVerificationEmail();
  }

  Future<void> sendVerificationEmail() async {
    try{
      await AuthenticationRepository.instance.sendEmailVerification();
    } catch (e){
      print('Unexpected Error: $e');
    }
  }

  void setTinerForAutoRedirect() {}

  void manuallyCheckEmailVerificationState() {}
}