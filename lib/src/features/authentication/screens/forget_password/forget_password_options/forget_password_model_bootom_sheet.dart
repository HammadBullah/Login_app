import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_phone/forget_password_phone.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        builder: (context) => Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tForgetPasswordTitle, style: Theme.of(context).textTheme.headline2,),
              Text(tForgetPasswordSubTitle, style: Theme.of(context).textTheme.subtitle2,),
              SizedBox(height: tFormHeight,),
              ForgetPasswordBtnWidget(
                btnIcon: Icons.mail_outline_rounded,
                title: 'E-Mail',
                subTitle: tResetViaEMail,
                onTap: () {
                  Navigator.pop(context);
                  Get.to(()=> const ForgetPasswordMailScreen()); },
              ),
              SizedBox(height: tDefaultSize-10,),
              ForgetPasswordBtnWidget(
                btnIcon: Icons.mobile_friendly_rounded,
                title: 'Phone Number',
                subTitle: tResetViaPhone,
                onTap: () {
                  Navigator.pop(context);
                Get.to(()=> const ForgetPasswordPhoneScreen()); },
              ),
            ],
          ),
        )
    );
  }
}