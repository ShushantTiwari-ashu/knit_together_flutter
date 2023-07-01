library color;

import 'package:flutter/material.dart';

class ColorPalette {
  //Colors for theme
  static const Color primaryBlue = Color(0xFF001FAB);
  static const Color primaryGreen = Color(0xFF00C853);
  static const Color primaryRed = Color(0xFFD50000);
  static const Color primaryYellow = Color(0xFFFFD600);
  static const Color primaryPurple = Color(0xFF6200EE);
  static const Color primaryOrange = Color(0xFFFF6D00);
  static const Color primaryTeal = Color(0xFF00BFA5);
  static const Color primaryIndigo = Color(0xFF3D5AFE);
  static const Color primaryCyan = Color(0xFF00ACC1);
  static const Color primaryLime = Color(0xFFAEEA00);
  static const Color primaryPink = Color(0xFFD500F9);

  static const Color secondaryAmber = Color(0xFFFFAB00);
  static const Color secondaryDeepOrange = Color(0xFFFF5722);
  static const Color secondaryDeepPurple = Color(0xFF6200EE);
  static const Color secondaryGreen = Color(0xFF00C853);
  static const Color secondaryLightBlue = Color(0xFF00B0FF);
  static const Color secondaryLime = Color(0xFFAEEA00);
  static const Color secondaryPink = Color(0xFFFF4081);
  static const Color secondaryPurple = Color(0xFF6200EE);
  static const Color secondaryRed = Color(0xFFD50000);
  static const Color secondaryTeal = Color(0xFF00BFA5);

  static const Color accentBlue = Color(0xFF001FAB);
  static const Color accentGreen = Color(0xFF00C853);
  static const Color accentRed = Color(0xFFD50000);
  static const Color accentYellow = Color(0xFFFFD600);
  static const Color accentPurple = Color(0xFF6200EE);
  static const Color accentOrange = Color(0xFFFF6D00);
  static const Color accentTeal = Color(0xFF00BFA5);
  static const Color accentIndigo = Color(0xFF3D5AFE);
  static const Color accentCyan = Color(0xFF00ACC1);
  static const Color accentLime = Color(0xFFAEEA00);
  static const Color accentPink = Color(0xFFD500F9);

  static Color getColorCircleProgress(double s) {
    Color r = ColorPalette.accentPink;
    if (s > 4.5 && s < 7) {
      r = ColorPalette.accentYellow;
    } else if (s >= 7) {
      r = ColorPalette.accentTeal;
    }
    return r;
  }
}
