import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:login_app/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:login_app/src/utils/theme/widget_themes/text_theme.dart';

class HAppTheme {

  HAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
    textTheme: HTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtomTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: HTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtomTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
