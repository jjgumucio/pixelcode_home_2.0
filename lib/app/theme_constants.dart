import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kPrimaryColor = Color(0xff2b6a99);
const Color kSecondaryColor = Color(0xfffbd439);
const Color kShadowColor = Color(0x15000000);

const Color kPrimaryTextColor = Color(0xff616161);
const Color kSecondaryTextColor = Color(0xff808080);
const Color kLightTextColor = Color(0xffe0e0e0);

const double bottomTabNavigatorHeight = 70;

const Map<int, Color> colorMap = {
  50: Color.fromRGBO(43, 105, 153, 1),
  100: Color.fromRGBO(43, 105, 153, 2),
  200: Color.fromRGBO(43, 105, 153, 3),
  300: Color.fromRGBO(43, 105, 153, 4),
  400: Color.fromRGBO(43, 105, 153, 5),
  500: Color.fromRGBO(43, 105, 153, 6),
  600: Color.fromRGBO(43, 105, 153, 7),
  700: Color.fromRGBO(43, 105, 153, 8),
  800: Color.fromRGBO(43, 105, 153, 9),
  900: Color.fromRGBO(43, 105, 153, 1),
};

const double kNavbarHeight = 70;

final pixelCodeTheme = ThemeData(
  primarySwatch: MaterialColor(kPrimaryColor.value, colorMap),
  canvasColor: Colors.white,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(primary: kLightTextColor),
  ),
  textTheme: TextTheme(
    headline1: GoogleFonts.lato(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: kPrimaryTextColor,
      fontStyle: FontStyle.italic,
    ),
    headline2: GoogleFonts.lato(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.italic,
      color: kPrimaryTextColor,
    ),
    headline3: GoogleFonts.lato(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: kPrimaryTextColor,
    ),
    headline4: GoogleFonts.lato(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: kPrimaryTextColor,
    ),
    bodyText1: GoogleFonts.lato(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: kPrimaryTextColor,
    ),
    bodyText2: GoogleFonts.lato(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: kLightTextColor,
    ),
  ),
);
