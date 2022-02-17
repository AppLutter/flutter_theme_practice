import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData textCustomTheme() {
  return ThemeData(
    textTheme: TextTheme(
      bodyText2: GoogleFonts.sourceCodePro(
        textStyle: const TextStyle(
          fontSize: 40.0,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          const TextStyle(fontSize: 30.0),
        ),
        backgroundColor: MaterialStateProperty.all(
          const Color(0xFFA0AFFF),
        ),
        minimumSize: MaterialStateProperty.all(
          const Size(200, 100),
        ),
        elevation: MaterialStateProperty.all(0),
        shadowColor: MaterialStateProperty.all(
          const Color(0xFF9AB9FF),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.rubik(
        textStyle: const TextStyle(
          fontSize: 30.0,
        ),
      ),
      color: const Color(0xFFA0AFFF),
      elevation: 0.0,
      toolbarHeight: 80.0,
    ),
  );
}
