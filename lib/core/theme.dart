import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    scaffoldBackgroundColor: Colors.black,
       colorScheme: const ColorScheme(
         primary: Colors.blue,
         primaryVariant: Colors.blueAccent,
         secondary: Colors.purple,
         secondaryVariant: Colors.purpleAccent,
         surface: Colors.white,
         background: Colors.black,
         error: Colors.red,
         onPrimary: Colors.white,
         onSecondary: Colors.grey,
         onSurface: Colors.white,
         onBackground: Colors.black,
         onError: Colors.black,
         brightness: Brightness.dark),
  );
  static final lightTheme = ThemeData(
    primarySwatch: Colors.blue,
  );
}
