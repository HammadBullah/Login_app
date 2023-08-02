import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';

class TFadeInAnimation extends StatelessWidget {
  TFadeInAnimation({super.key, required this.durationInMS, required this.animate, required this.child});

  final controller = Get.put(FadeInAnimationController());

  final int durationInMS;
  final TAnimatePosition? animate;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Obx(
            () => AnimatedPositioned(
            duration: Duration(milliseconds: durationInMS),
              top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
              left: controller.animate.value ? animate!.leftAfter : animate!.leftBefore ,
              right: controller.animate.value ? animate!.rightAfter : animate!.rightBefore,
              bottom: controller.animate.value ? animate!.bottomAfter : animate!.bottomBefore,

            child: AnimatedOpacity(
            duration: Duration(milliseconds: durationInMS),
        opacity: controller.animate.value ? 1: 0,
        child: child,
            ),
            )
    );
  }
}
