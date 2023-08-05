import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/controllers/signup_controller.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_secreen.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight-10),
      child: Form(
        key: _formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.fullName,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(const Radius.circular(20.0)),
                  ),
                  label: Text('Full Name'),
                  prefixIcon: Icon(Icons.person_outline_rounded),
                ),
              ),
              const SizedBox(height: tFormHeight-20,),
              TextFormField(
                controller: controller.email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(const Radius.circular(20.0)),
                  ),
                  label: Text('E-mail'),
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              const SizedBox(height: tFormHeight-20,),
              TextFormField(
                controller: controller.phoneNo,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(const Radius.circular(20.0)),
                  ),
                  label: Text('Phone Number'),
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
              const SizedBox(height: tFormHeight-20,),
              TextFormField(
                controller: controller.password,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(const Radius.circular(20.0)),
                  ),
                  label: Text('Password'),
                  prefixIcon: Icon(Icons.fingerprint),
                ),
              ),
              const SizedBox(height: tFormHeight-20,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  if(_formKey.currentState!.validate()){
                    SignUpController.instance.registerUser(controller.email.text.trim(),controller.password.text.trim());
                    //SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());
                    Get.to(() => const OTPScreen());
                  }
                },
                  child: Text(tSignup.toUpperCase()),
                ),
              )
            ]
        ),
      ),
    );
  }
}
