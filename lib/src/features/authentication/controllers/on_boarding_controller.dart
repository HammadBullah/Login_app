import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:login_app/src/features/authentication/screens/on_boarding/on_boarding_pagr_widget.dart';
import 'package:login_app/src/features/authentication/screens/welcome/welcome_secreen.dart';

class OnBoardingController extends GetxController {

  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(model: OnBoardingModel(
      image: tOnBoardingImage1,
      title: tOnBoardingTitle1,
      subTitle: tOnBoardingSubTitle1,
      counterText: tOnBoardingCounter1,
      bgColor: tOnBoardingPage1Color,
    ),
    ),
    OnBoardingPageWidget(model: OnBoardingModel(
      image: tOnBoardingImage2,
      title: tOnBoardingTitle2,
      subTitle: tOnBoardingSubTitle2,
      counterText: tOnBoardingCounter2,
      bgColor: tOnBoardingPage2Color,
    ),
    ),
    OnBoardingPageWidget(model: OnBoardingModel(
      image: tOnBoardingImage3,
      title: tOnBoardingTitle3,
      subTitle: tOnBoardingSubTitle3,
      counterText: tOnBoardingCounter3,
      bgColor: tOnBoardingPage3Color,
    ),
    ),
  ];

  animateToNextSlide(){
    int nextPage = controller.currentPage + 1;
    if (nextPage >= pages.length) {
      // Navigate to WelcomeScreen if the current page is the last page
      Get.off(WelcomeScreen());
    } else {
      controller.animateToPage(page: nextPage);
    }
  }

  onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;

  skip() {
    // Directly navigate to WelcomeScreen
    Get.off(WelcomeScreen());
  }
}