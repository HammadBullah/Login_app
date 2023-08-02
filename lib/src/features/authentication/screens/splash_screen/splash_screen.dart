import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';

import '../../../../constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return  Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
          durationInMS: 2000,
          animate: TAnimatePosition(
            topAfter: 80,
            topBefore: 80,
            leftAfter: tDefaultSize,
            leftBefore: -80
          ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tAppName, style: Theme.of(context).textTheme.headline3,),
                    Text(tAppTagLine, style: Theme.of(context).textTheme.headline2,),
                  ],
                ),
    ),
            TFadeInAnimation(durationInMS: 2400,
                animate: TAnimatePosition(
                  bottomBefore: 0,
                  bottomAfter: 100,
                ),
                        child: Image(image: AssetImage(tSplashImage),
                          alignment: Alignment.center,
                ),
            ),
          TFadeInAnimation(durationInMS: 2400,
              animate: TAnimatePosition(
                bottomBefore: 0,
                bottomAfter: 60,
                rightBefore: tDefaultSize,
                rightAfter: tDefaultSize,
              ),
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tPrimaryColor,
                  ),
                ),
                ),
        ],
      ),
    );
  }


}
