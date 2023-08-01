import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/constants/colors.dart';
class HTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      headline2: GoogleFonts.montserrat(
        color: tDarkColor,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      ),
      headline3: GoogleFonts.montserrat(
        color: tDarkColor,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      subtitle2: GoogleFonts.poppins(
        color: tDarkColor,
        fontSize: 18,
          fontWeight: FontWeight.normal
      ),
      subtitle1: GoogleFonts.poppins(
        color: tDarkColor,
        fontSize: 18,
          fontWeight: FontWeight.normal
      ),
      headline6: GoogleFonts.montserrat(
        color: tDarkColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ));
  static TextTheme darkTextTheme = TextTheme(
      headline2: GoogleFonts.montserrat(
        color: tWHiteColor,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      ),
      headline3: GoogleFonts.montserrat(
        color: tWHiteColor,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      subtitle2: GoogleFonts.poppins(
        color: tWHiteColor,
        fontSize: 18,
        fontWeight: FontWeight.normal
      ),
      subtitle1: GoogleFonts.poppins(
        color: tDarkColor,
        fontSize: 18, fontWeight: FontWeight.normal
      ),
      headline6: GoogleFonts.montserrat(
        color: tWHiteColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ));
}
