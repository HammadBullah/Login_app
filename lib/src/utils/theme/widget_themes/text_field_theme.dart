import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';

class TTextFormFieldTheme{
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      InputDecorationTheme(
          prefixIconColor: tSecondaryColor,
          border: OutlineInputBorder(),
          floatingLabelStyle: TextStyle(color: tSecondaryColor),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                width: 2.0, color: tSecondaryColor),
          )
      );

  static InputDecorationTheme darkInputDecorationTheme =
  InputDecorationTheme(
      prefixIconColor: tPrimaryColor,
      border: OutlineInputBorder(),
      floatingLabelStyle: TextStyle(color: tPrimaryColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(width: 2.0, color: tPrimaryColor),
      )
  );
}