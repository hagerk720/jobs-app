import 'package:flutter/material.dart';

final ThemeData jobTheme = ThemeData(
  colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff5934fe),
      onPrimary: Color(0xff1c1c26),
      secondary: Colors.black,
      onSecondary: Colors.black,
      error: Colors.black,
      onError: Colors.black,
      background: Color(0xff13131b),
      onBackground: Colors.black,
      surface: Colors.black,
      onSurface: Colors.black),
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    buttonColor: const Color(0xff5934fe),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Colors.white,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    headline3: TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w300,
    ),
    headline4: TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.normal,
    ),
  ),
  cardTheme: CardTheme(
    color: const Color(0xff1c1c26),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    margin: const EdgeInsets.all(10),
  ),
);
