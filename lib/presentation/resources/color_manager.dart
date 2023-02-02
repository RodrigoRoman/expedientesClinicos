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
  static Color accent = HexColor.fromHex('#81D4FA'); // Light Blue
  static Color primary = HexColor.fromHex('#8BC34A'); // Light Green
  static Color secondary = HexColor.fromHex('#FFC107'); // Yellow
  static Color tertiary = HexColor.fromHex('#FF5722'); // Light Red
  static Color background = HexColor.fromHex('#ECEFF1'); // Light grey
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
