import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;

  UserModel({
    required this.fullName,
    required this.phoneNo,
    required this.password,
    this.id,
    required this.email,
  });

  toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      "Phone": phoneNo,
      "Passwprd": password,
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
      id: document.id,
        fullName: data["Fullname"],
        phoneNo: data["Phone"],
        password: data["Password"],
        email:data["Email"],
    );
  }
}