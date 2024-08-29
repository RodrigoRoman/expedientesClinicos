import 'package:flutter/material.dart';

class ColorManager {
  static Color black = HexColor.fromHex('#000000'); //black
  static Color white = HexColor.fromHex('#FDFFFA'); //white
  static Color grey = HexColor.fromHex('#5D686E');
  static Color red = HexColor.fromHex('#FB3B1E');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF' + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

class LightThemeColors {
  static Color primary = HexColor.fromHex('#255ED6'); // Most dominant color
  static Color secondary =
      // HexColor.fromHex('#E6EFF9'); // Complement of primary color
      HexColor.fromHex('#FF64B5F6');
  static Color tertiary =
      HexColor.fromHex('#6CD8D1'); // Provides variety to the UI
  static Color accent = HexColor.fromHex('#FEA41D'); // Color that stands out
  static Color callout = HexColor.fromHex('#51BEFB'); // Color that stands out
  static Color background = HexColor.fromHex('#FDFFFA'); // Background color
  static Color opaqueBackground = HexColor.fromHex('#CCe6e6e6');
  static Color surface =
      HexColor.fromHex('#C5DCFA'); // Cards,dialog,pannels color
}

class DarkThemeColors {
  static Color accent = HexColor.fromHex('#0277BD'); // Blue
  static Color primary = HexColor.fromHex('#1B5E20'); // Green
  static Color secondary = HexColor.fromHex('#F57F17'); // Orange
  static Color tertiary = HexColor.fromHex('#BF360C'); // Red
  static Color background = HexColor.fromHex('#263238'); // Dark Grey
}

var lightGradientColors = <Color>[
  LightThemeColors.background,
  LightThemeColors.primary
];
