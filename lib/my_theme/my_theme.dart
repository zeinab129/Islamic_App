import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static const Color primaryColor = Color(0XFFB7935F);
  static const Color primaryDarkColor = Color(0XFFFACC1D);
  static const Color whiteColor = Color(0XFFF8F8F8);
  static const Color blackColor = Color(0XFF242424);
  static const Color darkBgColor = Color(0XFF141A2E);

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
          backgroundColor: MyTheme.primaryColor,
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
          scrolledUnderElevation: 0.0,
          elevation: 0));

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TextTheme(
          bodyLarge:
              GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.w700),
          bodyMedium:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w400),
          bodySmall:
              GoogleFonts.elMessiri(fontSize: 20, fontWeight: FontWeight.w400)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: MyTheme.darkBgColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryDarkColor,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
          iconTheme: const IconThemeData(color: Colors.white, size: 30),
          centerTitle: true,
          elevation: 0));
}
