import 'package:expedientes_clinicos/presentation/resources/font_manager.dart';
import 'package:flutter/material.dart';

class RegularTextStyle extends TextStyle {
  const RegularTextStyle({required Color color, required double size})
      : super(
          color: color,
          fontWeight: FontWeightManager.regular,
          fontSize: size,
          fontFamily: FontConstants.fontFamily,
        );
}

class LightTextStyle extends TextStyle {
  const LightTextStyle({required Color color, required double size})
      : super(
          color: color,
          fontWeight: FontWeightManager.light,
          fontSize: size,
          fontFamily: FontConstants.fontFamily,
        );
}

class BoldTextStyle extends TextStyle {
  const BoldTextStyle({required Color color, required double size})
      : super(
          color: color,
          fontWeight: FontWeightManager.bold,
          fontSize: size,
          fontFamily: FontConstants.fontFamily,
        );
}

class SemiBoldTextStyle extends TextStyle {
  const SemiBoldTextStyle({required Color color, required double size})
      : super(
          color: color,
          fontWeight: FontWeightManager.bold,
          fontSize: size,
          fontFamily: FontConstants.fontFamily,
        );
}

class SuperBoldTextStyle extends TextStyle {
  const SuperBoldTextStyle({required Color color, required double size})
      : super(
          color: color,
          fontWeight: FontWeightManager.superBold,
          fontSize: size,
          fontFamily: FontConstants.fontFamily,
        );
}
