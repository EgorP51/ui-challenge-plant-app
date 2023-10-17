import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  // colors
  static const Color backgroundColor = Color(0xFFEAEAEC);
  static const Color cardColor = Color(0xFFFFFFFF);
  static const Color titleTextColor = Color(0xFF000000);
  static const Color greenColor = Color(0xFF75974B);
  static const Color buttonGreenColor = Color(0xFF66854A);

  // numeric values
  static const double cardRadius = 25;
  static const double smallRadius = 12;
  static const double defaultPadding = 20;

  // default string values
  static const String defaultUserImage =
      "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png";

  // theme
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      displayLarge: GoogleFonts.tiltNeon(
        color: titleTextColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.tiltNeon(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      labelMedium: GoogleFonts.tiltNeon(
        color: titleTextColor.withOpacity(0.6),
        fontSize: 20,
        fontWeight: FontWeight.w900,
      ),
      labelSmall: GoogleFonts.tiltNeon(
        fontSize: 16,
        color: Constants.titleTextColor,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
