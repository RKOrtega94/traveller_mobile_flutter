import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: const Color(0xFFF59300),
  fontFamily: "Urbanist",
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  primaryColor: const Color(0xFFF59300),
  fontFamily: "Urbanist",
  scaffoldBackgroundColor: Colors.black,
);
