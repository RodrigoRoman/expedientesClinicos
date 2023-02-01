import 'package:flutter/material.dart';

class ColorManager{
  static Color black = HexColor.fromHex('#000000'); //black
  static Color white = HexColor.fromHex('#FDFFFA'); //white
  static Color grey = HexColor.fromHex('#5D686E'); 
  static Color red = HexColor.fromHex('#FB3B1E'); 
}

extension HexColor on Color{
  static Color fromHex(String hexColorString){
    hexColorString = hexColorString.replaceAll('#','');
    if(hexColorString.length == 6){
      hexColorString = 'FF'+hexColorString;
    }
    return Color(int.parse(hexColorString, radix:16));
  }
}

class LightThemeColors{
  static Color primary = HexColor.fromHex('#357CE5'); //navyBlue
  static Color secondary = HexColor.fromHex('#F9DEC3'); //peach
  static Color background = HexColor.fromHex('#9CC8F4'); // ligthBlue
  static Color tertiary = HexColor.fromHex('#7AA6EB'); //midBlue
  
}

class DarkThemeColors{
  static Color primary = HexColor.fromHex('#3E2B39');
  static Color secondary = HexColor.fromHex('#8EB6E4');
  static Color background= HexColor.fromHex('#58154F');
  static Color tertiary= HexColor.fromHex('#234A7E');
}


var lightGradientColors = <Color>[LightThemeColors.background,LightThemeColors.primary];
