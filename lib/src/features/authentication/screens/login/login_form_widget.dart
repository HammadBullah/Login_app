import 'package:flutter/material.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bootom_sheet.dart';
import 'package:login_app/src/features/authentication/screens/login/login_form_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight-10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: 'E-mail',
              hintText: 'E-mail',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: tFormHeight-20,),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: 'Password',
                hintText: 'Password',
                border: OutlineInputBorder(),
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
            child: ElevatedButton(onPressed: (){},
              child: Text(tLogin.toUpperCase()),
            ),
          ),
        ],
      ),
    ),
    );
  }


}

