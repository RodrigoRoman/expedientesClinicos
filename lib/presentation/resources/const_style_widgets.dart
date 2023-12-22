import 'package:expedientes_clinicos/presentation/resources/color_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/text_style.dart';
import 'package:flutter/material.dart';

import 'constant_size_values.dart';

class BoderRadiusStyle {
  //Circular corners
  static const BorderRadius allCircular =
      BorderRadius.all(Radius.circular(AppSize.s14));
  static const BorderRadius topLeftCircular =
      BorderRadius.only(topLeft: Radius.circular(AppSize.s14));
  static const BorderRadius topRightCircular =
      BorderRadius.only(topRight: Radius.circular(AppSize.s14));
  static const BorderRadius bottomLeftCircular =
      BorderRadius.only(bottomLeft: Radius.circular(AppSize.s14));
  static const BorderRadius bottomRightCircular =
      BorderRadius.only(bottomRight: Radius.circular(AppSize.s14));

  //Rounded corners
  static const BorderRadius allRound =
      BorderRadius.all(Radius.circular(AppSize.s8));
  static const BorderRadius topLeftRound =
      BorderRadius.only(topLeft: Radius.circular(AppSize.s8));
  static const BorderRadius topRightRound =
      BorderRadius.only(topRight: Radius.circular(AppSize.s8));
  static const BorderRadius bottomLeftRound =
      BorderRadius.only(bottomLeft: Radius.circular(AppSize.s8));
  static const BorderRadius bottomRightRound =
      BorderRadius.only(bottomRight: Radius.circular(AppSize.s8));

  //Rounded corners
  static const BorderRadius allCurve =
      BorderRadius.all(Radius.circular(AppSize.s4));
  static const BorderRadius topLeftCurve =
      BorderRadius.only(topLeft: Radius.circular(AppSize.s4));
  static const BorderRadius topRightCurve =
      BorderRadius.only(topRight: Radius.circular(AppSize.s4));
  static const BorderRadius bottomLeftCurve =
      BorderRadius.only(bottomLeft: Radius.circular(AppSize.s4));
  static const BorderRadius bottomRightCurve =
      BorderRadius.only(bottomRight: Radius.circular(AppSize.s4));

//Border card image
  static const BorderRadius weekDayButton = BorderRadius.only(
      topLeft: Radius.circular(AppSize.s18),
      topRight: Radius.circular(AppSize.s2),
      bottomLeft: Radius.circular(AppSize.s2),
      bottomRight: Radius.circular(AppSize.s18));

  //Border card image
  static const BorderRadius cardImage = BorderRadius.only(
      topLeft: Radius.circular(AppSize.s18),
      topRight: Radius.circular(AppSize.s4),
      bottomLeft: Radius.circular(AppSize.s18),
      bottomRight: Radius.circular(AppSize.s18));

  //Minus button card image
  static const BorderRadius minusButton = BorderRadius.only(
      topLeft: Radius.circular(AppSize.s75),
      topRight: Radius.circular(AppSize.s4),
      bottomLeft: Radius.circular(AppSize.s35),
      bottomRight: Radius.circular(AppSize.s4));

  //Plus button card image
  static const BorderRadius plusButton = BorderRadius.only(
      topLeft: Radius.circular(AppSize.s4),
      topRight: Radius.circular(AppSize.s35),
      bottomLeft: Radius.circular(AppSize.s4),
      bottomRight: Radius.circular(AppSize.s75));
}

class TextStyleConstants {
  static TextStyle abbreviationH1 =
      BoldTextStyle(color: ColorManager.grey, size: AppSize.s20);
}
