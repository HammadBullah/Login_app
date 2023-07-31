
import 'package:flutter/material.dart';
import 'package:login_app/src/features/authentication/models/model_on_boarding.dart';

import '../../../../constants/sizes.dart';


class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(model.image), height: size.height *0.35,),
          Column(
            children: [
              Text(model.title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline3,),
              Text(model.subTitle, textAlign: TextAlign.center, style: Theme.of(context).textTheme.subtitle2,),
            ],
          ),

          Text(model.counterText, style: Theme.of(context).textTheme.headline6,),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
