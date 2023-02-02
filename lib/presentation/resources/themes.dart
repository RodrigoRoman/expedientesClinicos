import 'package:expedientes_clinicos/presentation/resources/color_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/font_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/text_style.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    //1
    return ThemeData(
      //2
      hintColor: LightThemeColors.accent,
      primaryColor: LightThemeColors.primary,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: LightThemeColors.primary,
          onPrimary: LightThemeColors.background,
          secondary: LightThemeColors.secondary,
          onSecondary: LightThemeColors.background,
          error: ColorManager.red,
          onError: LightThemeColors.tertiary,
          background: LightThemeColors.background,
          onBackground: LightThemeColors.tertiary,
          surface: LightThemeColors.tertiary,
          onSurface: LightThemeColors.secondary),
      scaffoldBackgroundColor: LightThemeColors.background,
      fontFamily: FontConstants.fontFamily,
      buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          disabledColor: ColorManager.grey,
          buttonColor: LightThemeColors.tertiary,
          splashColor: LightThemeColors.secondary),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle:
            RegularTextStyle(color: ColorManager.black, size: AppSize.s16),
        backgroundColor: LightThemeColors.secondary,
        foregroundColor: LightThemeColors.tertiary,
      )),
      textTheme: TextTheme(
        titleLarge: BoldTextStyle(color: ColorManager.black, size: AppSize.s22),
        titleMedium:
            SemiBoldTextStyle(color: ColorManager.black, size: AppSize.s20),
        titleSmall:
            RegularTextStyle(color: ColorManager.black, size: AppSize.s20),
        headlineLarge:
            SemiBoldTextStyle(color: ColorManager.black, size: AppSize.s18),
        headlineMedium:
            RegularTextStyle(color: ColorManager.grey, size: AppSize.s18),
        bodyLarge:
            SemiBoldTextStyle(color: ColorManager.black, size: AppSize.s14),
        bodyMedium:
            SemiBoldTextStyle(color: ColorManager.black, size: AppSize.s16),
        bodySmall: LightTextStyle(color: ColorManager.black, size: AppSize.s12),
      ),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(AppSize.s8),
          labelStyle: RegularTextStyle(
              color: LightThemeColors.tertiary, size: AppSize.s14),
          hintStyle:
              RegularTextStyle(color: ColorManager.grey, size: AppSize.s14),
          errorStyle:
              RegularTextStyle(color: ColorManager.red, size: AppSize.s14),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: LightThemeColors.tertiary, width: AppSize.s2),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: LightThemeColors.tertiary, width: AppSize.s2),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: LightThemeColors.secondary, width: AppSize.s2),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),
          focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.red, width: AppSize.s2),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8)))),
    );
  }

  static ThemeData get darkTheme {
    //1
    return ThemeData(
      //2
      hintColor: DarkThemeColors.accent,
      primaryColor: DarkThemeColors.primary,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: DarkThemeColors.primary,
          onPrimary: DarkThemeColors.background,
          secondary: DarkThemeColors.secondary,
          onSecondary: DarkThemeColors.background,
          error: ColorManager.red,
          onError: DarkThemeColors.tertiary,
          background: DarkThemeColors.background,
          onBackground: DarkThemeColors.tertiary,
          surface: DarkThemeColors.tertiary,
          onSurface: DarkThemeColors.secondary),
      scaffoldBackgroundColor: DarkThemeColors.background,
      fontFamily: FontConstants.fontFamily,
      buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          disabledColor: ColorManager.grey,
          buttonColor: DarkThemeColors.tertiary,
          splashColor: DarkThemeColors.secondary),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle:
            RegularTextStyle(color: ColorManager.black, size: AppSize.s16),
        backgroundColor: DarkThemeColors.secondary,
        foregroundColor: DarkThemeColors.tertiary,
      )),
      textTheme: TextTheme(
        titleLarge: BoldTextStyle(color: ColorManager.black, size: AppSize.s22),
        titleMedium:
            SemiBoldTextStyle(color: ColorManager.black, size: AppSize.s20),
        titleSmall:
            RegularTextStyle(color: ColorManager.black, size: AppSize.s20),
        headlineLarge:
            SemiBoldTextStyle(color: ColorManager.black, size: AppSize.s18),
        headlineMedium:
            RegularTextStyle(color: ColorManager.grey, size: AppSize.s18),
        bodyLarge:
            SemiBoldTextStyle(color: ColorManager.black, size: AppSize.s14),
        bodyMedium:
            SemiBoldTextStyle(color: ColorManager.black, size: AppSize.s16),
        bodySmall: LightTextStyle(color: ColorManager.black, size: AppSize.s12),
      ),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(AppSize.s8),
          labelStyle: RegularTextStyle(
              color: DarkThemeColors.tertiary, size: AppSize.s14),
          hintStyle:
              RegularTextStyle(color: ColorManager.grey, size: AppSize.s14),
          errorStyle:
              RegularTextStyle(color: ColorManager.red, size: AppSize.s14),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: DarkThemeColors.tertiary, width: AppSize.s2),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: DarkThemeColors.tertiary, width: AppSize.s2),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: DarkThemeColors.secondary, width: AppSize.s2),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),
          focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.red, width: AppSize.s2),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8)))),
    );
  }
}
