import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String email;
  final String password;
  final String fullName;
  final String phoneNo;

  UserModel({
    required this.email,
    required this.password,
    required this.fullName,
    required this.phoneNo,
    this.id,

  });

  toJson() {
    return {
      "Email": email,
      "Password": password,
      "FullName": fullName,
      "Phone": phoneNo,
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
      id: document.id,
      email:data["Email"],
      password: data["Password"],
      fullName: data["Fullname"],
      phoneNo: data["Phone"],
    );
  }
}