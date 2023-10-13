import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
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
