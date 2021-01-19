import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF00C569);
const accentColor = const Color(0xFFFFFFFF);

ThemeData appTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    accentColor: accentColor,
    textTheme: TextTheme(
      headline1: new TextStyle(fontFamily: "Forque"),
      bodyText1: new TextStyle(fontFamily: "Forque"),
      bodyText2: new TextStyle(fontFamily: "Forque"),
      headline5: new TextStyle(fontFamily: "Forque"),
      headline6: new TextStyle(fontFamily: "Forque"),
      button: new TextStyle(fontFamily: "Forque"),
    ),
  );
}
