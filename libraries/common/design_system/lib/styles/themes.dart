import 'package:flutter/material.dart';

import 'color_palettes.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: ColorPalette.primaryBlue,
      primaryContainer: ColorPalette.primaryGreen,
      secondary: ColorPalette.secondaryAmber,
      secondaryContainer: ColorPalette.secondaryDeepOrange,
      surface: Colors.white,
      background: Colors.white,
      error: ColorPalette.primaryRed,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
    ),
    // Add more theme configurations as per your design system
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: ColorPalette.primaryBlue,
      primaryContainer: ColorPalette.primaryGreen,
      secondary: ColorPalette.secondaryAmber,
      secondaryContainer: ColorPalette.secondaryDeepOrange,
      surface: Colors.black,
      background: Colors.black,
      error: ColorPalette.primaryRed,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.white,
      onBackground: Colors.white,
      onError: Colors.white,
    ),
    // Add more theme configurations as per your design system
  );

  // Add more supported themes as per your design system

  static final List<ThemeData> supportedThemes = [
    lightTheme,
    darkTheme,
    // Add more supported themes as needed
  ];
}
