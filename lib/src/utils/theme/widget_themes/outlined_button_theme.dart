import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/sizes.dart';

class TOutlinedButtomTheme{
  TOutlinedButtomTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      foregroundColor: tSecondaryColor,
      textStyle: GoogleFonts.poppins(
        fontSize: 15,
      ),
      side: BorderSide(color: tSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      foregroundColor: tWHiteColor,
      textStyle: GoogleFonts.poppins(
        fontSize: 15,
      ),
      side: BorderSide(color: tWHiteColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

}