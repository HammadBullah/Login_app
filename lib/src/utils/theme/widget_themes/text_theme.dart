import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HTextTheme{

  static TextTheme lightTextTheme = TextTheme(
      headline2: GoogleFonts.montserrat(
        color: Colors.black87,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      ),
      headline3: GoogleFonts.montserrat(
        color: Colors.black87,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      subtitle2: GoogleFonts.poppins(
        color: Colors.black54,
        fontSize: 18,
      ),
      headline6: GoogleFonts.montserrat(
  color: Colors.black87,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  )
  );
  static TextTheme darkTextTheme = TextTheme(
      headline2: GoogleFonts.montserrat(
        color: Colors.white70,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      ),
      headline3: GoogleFonts.montserrat(
        color: Colors.white70,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      subtitle2: GoogleFonts.poppins(
        color: Colors.white60,
        fontSize: 24,
      ),
      headline6: GoogleFonts.montserrat(
        color: Colors.white70,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      )
  );
}