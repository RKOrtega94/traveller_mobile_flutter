import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  applyElevationOverlayColor: false,
  brightness: Brightness.light,
  primaryColor: const Color(0xFF0061A4),
  primaryColorDark: const Color(0xFF003C6C),
  primaryColorLight: const Color(0xFF3383B0),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF0061A4),
    secondary: Color(0xFF3383B0),
    surface: Color(0xFFFFFFFF),
    background: Color(0xFFFFFFFF),
    error: Color(0xFFB00020),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFFFFFFFF),
    onSurface: Color(0xFF000000),
    onBackground: Color(0xFF000000),
    onError: Color(0xFFFFFFFF),
  ),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  applyElevationOverlayColor: false,
  brightness: Brightness.dark,
  primaryColor: const Color(0xFF0061A4),
  primaryColorDark: const Color(0xFF003C6C),
  primaryColorLight: const Color(0xFF3383B0),
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF0061A4),
    secondary: Color(0xFF3383B0),
    // Surface color gray 700
    surface: Color(0xFF303030),
    background: Color(0xFF121212),
    error: Color(0xFFCF6679),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFFFFFFFF),
    onSurface: Color(0xFFFFFFFF),
    onBackground: Color(0xFFFFFFFF),
    onError: Color(0xFF000000),
  ),
);

class AppTheme {
  static ThemeData get light => lightTheme;
  static ThemeData get dark => darkTheme;
}
