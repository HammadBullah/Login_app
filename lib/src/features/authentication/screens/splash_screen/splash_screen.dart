import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/controllers/splash_screen_controller.dart';

import '../../../../constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return  Scaffold(
      body: Stack(
        children: [
          Obx(
          () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 80,
              left: splashController.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tAppName, style: Theme.of(context).textTheme.headline3,),
                    Text(tAppTagLine, style: Theme.of(context).textTheme.headline2,),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: AlignmentDirectional.center,
            child: Obx(
              () => AnimatedPositioned(
                duration: Duration(milliseconds: 2400),
                bottom: splashController.animate.value ? 0 : -100,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 2000),
                  opacity: splashController.animate.value ? 1: 0,
                    child: Image(image: AssetImage(tSplashImage),
                    ),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 40 : 0,
              right: tDefaultSize,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tPrimaryColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


}
