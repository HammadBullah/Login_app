import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/controllers/login_controller.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bootom_sheet.dart';
import 'package:login_app/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app/src/features/core/screen/dashboard/dashboard.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:login_app/src/repository/authentication_repository/exceptions/signin_email_password_failure.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final controller = Get.put(LoginController());
    return Form(
      key: _formKey,
      child: Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight-10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(const Radius.circular(20.0)),
              ),
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: 'E-mail',
              hintText: 'E-mail',
            ),
          ),
          SizedBox(height: tFormHeight-20,),
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(const Radius.circular(20.0)),
                ),
                prefixIcon: Icon(Icons.fingerprint),
                labelText: 'Password',
                hintText: 'Password',
                suffixIcon: IconButton(onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp))
            ),
          ),
          const SizedBox(height: tFormHeight-20,),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(onPressed: (){
              ForgetPasswordScreen.buildShowModalBottomSheet(context);
            },
                child: Text(tForgetPassword,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.blue
                ))),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () => AuthenticationRepository.instance.loginWithEmailAndPassword(controller.email.text.trim(), controller.password.text.trim()
            ),
    child: Text(tLogin),
          ),
          ),
        ],
      ),
    ),
    );
  }


}

