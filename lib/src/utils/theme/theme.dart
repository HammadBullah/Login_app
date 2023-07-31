import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/utils/theme/widget_themes/text_theme.dart';

class HAppTheme {

  HAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
    textTheme: HTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: HTextTheme.darkTextTheme,
  );
}
