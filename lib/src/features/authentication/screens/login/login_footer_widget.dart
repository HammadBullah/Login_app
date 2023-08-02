import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        TextButton(onPressed: (){},
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
