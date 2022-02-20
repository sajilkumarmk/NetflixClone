import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixclone/utilities/colors.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    scaffoldBackgroundColor: appDarkBackground,
  );

  static final lightTheme = ThemeData(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    primaryColor: appPrimaryColor,
  );
}
