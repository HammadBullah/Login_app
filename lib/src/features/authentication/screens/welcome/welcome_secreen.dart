import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var height = mediaQuery.size.height;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(tWelcomeScreenImage),
              height: height * 0.6,
            ),
            Column(
              children: [
                Text(tWelcomeTitle,
                    style: Theme.of(context).textTheme.headline3),
                Text(tWelcomeSubTitle,
                    style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: () {},

                      child: Text(tLogin.toUpperCase()),
                    ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(tSignup.toUpperCase()))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
