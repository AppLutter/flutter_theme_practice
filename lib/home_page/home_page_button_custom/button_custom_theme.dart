import 'package:flutter/material.dart';

ThemeData buttonCustomTheme() {
  return ThemeData(
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
        elevation: MaterialStateProperty.all(20),
        shadowColor: MaterialStateProperty.all(
          const Color(0xFF9AB9FF),
        ),
      ),
    ),
  );
}
