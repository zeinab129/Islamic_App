import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TextTheme(
          bodyLarge:
              GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.w700),
          bodyMedium:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w400),
          bodySmall:
              GoogleFonts.elMessiri(fontSize: 20, fontWeight: FontWeight.w400)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0XFFB7935F),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black54,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
        iconTheme: const IconThemeData(color: Colors.black, size: 30),
        centerTitle: true,
      ));

  static ThemeData darkTheme = ThemeData();
}
