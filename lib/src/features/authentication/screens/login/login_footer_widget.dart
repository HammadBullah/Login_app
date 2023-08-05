import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/signup/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Row(
          children: <Widget>[
            Expanded(child: Divider()),

            Text("OR", style: Theme.of(context).textTheme.subtitle1,),

            Expanded(child: Divider()),
          ],
        ),

        const SizedBox(height: tFormHeight-10,),
        SizedBox(
          height: 80,
          width: double.infinity,
          child: FilledButton.icon(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.blue[500]?.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),

            ),
              icon: const Image(image: AssetImage(tGoogleLogoImage), width: 25.0),
              onPressed: (){},
              label: Text(tSignInWithGoogle, style: Theme.of(context).textTheme.subtitle1,)),
        ),
        const SizedBox(height: tFormHeight-20,),
        TextButton(onPressed: () => Get.to(()=> const SignUpScreen()),
          child: Text.rich(
            TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.subtitle1,
                children: const [
                  TextSpan(
                      text: tSignup,
                      style: TextStyle(
                        color: Colors.blue ,
                      )
                  )
                ]
            ),
          ),
        ),
      ],
    );
  }
}
