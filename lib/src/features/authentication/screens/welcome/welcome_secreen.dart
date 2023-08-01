import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(tWelcomeScreenImage)),
            Text(tWelcomeTitle),
            Text(tWelcomeSubTitle),
            Row(
              children: [
                OutlinedButton(onPressed: (){}, child: Text(tLogin)),
                ElevatedButton(onPressed: (){}, child: Text(tSignup)),

              ],
            )
          ],
        ),
      ),
    );
  }
}
