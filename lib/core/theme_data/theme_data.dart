import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme_extension.dart';

class DataTheme {
  themeData() {
    return ThemeData(
      extensions: <ThemeExtension<dynamic>>[
        VideoCallTheme().copyWith(
          largeText1: GoogleFonts.poppins(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: const Color(0xff333333),
          ),
          largeText2: GoogleFonts.poppins(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: const Color(0xffEE7966),
          ),
          smallText1: GoogleFonts.montserrat(
            fontSize: 13,

            color: const Color(0xff555555),
            letterSpacing: 0.5,
            fontWeight: FontWeight.w300,

          ),
          buttonText1: GoogleFonts.montserrat(
            fontSize: 18,

            color: Colors.white,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,


          ),

        ),
      ],
      useMaterial3: true,
      scaffoldBackgroundColor: const Color(0xffFAFAFA),
      primaryColor: const Color(0xffEE7966),
      appBarTheme: const AppBarTheme(centerTitle: true),
      // fontFamily: 'poppins',
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 48.0, fontFamily: 'poppins'),
        displayMedium: TextStyle(
          fontSize: 32.0,
          fontFamily: 'poppins',
        ),

        /// appbar title
        titleLarge: TextStyle(fontSize: 17.0, fontFamily: 'poppins'),
        bodyLarge: TextStyle(fontSize: 15.0, fontFamily: 'poppins'),
        bodySmall: TextStyle(fontSize: 13.0, fontFamily: 'poppins'),
        bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'poppins'),
        labelSmall: TextStyle(fontSize: 11.0, fontFamily: 'poppins'),

        /// button text
        labelMedium: TextStyle(fontSize: 18.0, fontFamily: 'montserrat'),
      ),
    );
  }
}
