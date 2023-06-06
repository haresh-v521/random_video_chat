import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_call/core/colors/color_style.dart';

class DataTheme {
  themeData() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: ColorStyle.backgroundColor,
      primaryColor: ColorStyle.primaryColor,
      appBarTheme: const AppBarTheme(centerTitle: true),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.poppins(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: ColorStyle.blackColor,
            letterSpacing: 0.5),
        displayMedium: GoogleFonts.poppins(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: ColorStyle.primaryColor,
            letterSpacing: 0.5),
        displaySmall: GoogleFonts.montserrat(
          fontSize: 14,
          color: ColorStyle.greyColor,
          letterSpacing: 0.7,
          fontWeight: FontWeight.w300,
        ),
        bodyLarge: GoogleFonts.montserrat(
          fontSize: 18,
          color: ColorStyle.whiteColor,
          letterSpacing: 0.7,
          fontWeight: FontWeight.w600,
        ),
        bodyMedium: GoogleFonts.montserrat(
          fontSize: 18,
          color: ColorStyle.blackColor,
          letterSpacing: 0.7,
          fontWeight: FontWeight.bold,
        ),
        labelMedium: GoogleFonts.poppins(
          fontSize: 48.0,
          color: ColorStyle.primaryColor,
          letterSpacing: 3,
          fontWeight: FontWeight.w600,
          shadows: [
            Shadow(
              blurRadius: 0.3,
              color: ColorStyle.primaryColor,
            )
          ],
        ),
        labelSmall: GoogleFonts.poppins(
            color: ColorStyle.lightGreyColor, letterSpacing: 1.1, fontSize: 16),
        headlineSmall:
            GoogleFonts.montserrat(fontSize: 18, color: ColorStyle.blackColor),
        bodySmall: GoogleFonts.poppins(
          fontSize: 15,
          color: ColorStyle.lightBlackColor,
          letterSpacing: 0.3,
        ),
        headlineLarge: GoogleFonts.poppins(
          fontSize: 24,
          color: ColorStyle.fullBlackColor,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.4,
        ),
        titleSmall: GoogleFonts.poppins(
          fontSize: 18,
          color: ColorStyle.fullBlackColor,
          letterSpacing: 0.3,
        ),
        titleMedium: GoogleFonts.poppins(
            color: ColorStyle.greyTextColor,fontSize: 16),

          headlineMedium: GoogleFonts.poppins(
              color: ColorStyle.subtitleTextColor ,fontSize: 12)
      ),
    );
  }
}
