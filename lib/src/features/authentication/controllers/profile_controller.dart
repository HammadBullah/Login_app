import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/models/users_model.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:login_app/src/repository/authentication_repository/user_repository.dart';

class ProfileController extends GetxController{
  static ProfileController get instance => Get.find();

  final _userRepo = Get.put(UserRepository());
  final _authRepo = Get.put(AuthenticationRepository());

  final email = TextEditingController;
  final password = TextEditingController;
  final fullName= TextEditingController;
  final phoneNo= TextEditingController;

  getUserData() {
    final email = _authRepo.firebaseUser?.email;
    if (email != null) {
      return _userRepo.getUserDetails(email);
    }else{
      Get.snackbar("Error", "Login to continue");
    }
  }

  Future<List<UserModel>> getAllUsers() async => await _userRepo.allUsers();

  updateRecord(UserModel user) async{
    await _userRepo.updateUserRecord(user);
  }

}