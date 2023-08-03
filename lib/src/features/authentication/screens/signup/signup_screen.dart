import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app/src/common_widgets/form/form_header_widget.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:login_app/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child:  Column(
              children : [
                FormHeaderWidget(
                image: tWelcomeScreenImage,
                title: tSignUpTitle,
                subTitle: tSignUpSubTitle,
              ),
                SignUpFormWidget(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("OR", style: Theme.of(context).textTheme.subtitle1,),
                  const SizedBox(height: tFormHeight-10,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                        icon: const Image(image: AssetImage(tGoogleLogoImage), width: 25.0),
                        onPressed: (){},
                        label: Text(tSignInWithGoogle, style: Theme.of(context).textTheme.subtitle1,)),
                  ),
                  const SizedBox(height: tFormHeight-20,),
                  TextButton(onPressed: () => Get.to(()=> const LoginScreen()),
                    child: Text.rich(
                      TextSpan(
                          text: tAlreadyHaveAnAccount,
                          style: Theme.of(context).textTheme.subtitle1,
                          children: const [
                            TextSpan(
                                text: tLogin,
                                style: TextStyle(
                                  color: Colors.blue ,
                                )
                            )
                          ]
                      ),
                    ),
                  ),
                ],
              )
              ]
      ),
          ),
        ),
      ),
    );
  }
}

