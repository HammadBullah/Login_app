import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:login_app/src/features/authentication/models/users_model.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_secreen.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:login_app/src/repository/authentication_repository/user_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName= TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  void registerUser(String email, String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }

  Future<void> createUSer(UserModel user) async {
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(() => const OTPScreen());
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}