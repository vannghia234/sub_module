import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  static String fontFamily = 'poppins';
  static String packageName = 'sub_project';
  static TextStyle labelMedium1(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w500,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  static TextStyle labelMedium2({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
        color: color ?? AppColors.textBlackColor,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontFamily: fontFamily,
        package: packageName);
  }

  static TextStyle labelMedium3(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 12,
      fontFamily: fontFamily,
      fontWeight: fontWeight ?? FontWeight.w500,
      package: packageName,
    );
  }

  static TextStyle labelMedium4({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 10,
      fontWeight: fontWeight ?? FontWeight.w500,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  // Label Styles
  static TextStyle label1(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  static TextStyle label2(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  static TextStyle label3(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  static TextStyle label4(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 10,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  // Button Styles
  static TextStyle button1(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.white,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  static TextStyle button2(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.white,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  static TextStyle button3(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.white,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  // Body Styles
  static TextStyle body1(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  static TextStyle body2(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  static TextStyle body3(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  static TextStyle body4(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 10,
      fontFamily: fontFamily,
      fontWeight: fontWeight ?? FontWeight.w400,
      package: packageName,
    );
  }

  // Caption Styles
  static TextStyle caption1(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 12,
      fontFamily: fontFamily,
      fontWeight: fontWeight ?? FontWeight.w400,
      package: packageName,
    );
  }

  static TextStyle caption2(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 10,
      fontFamily: fontFamily,
      fontWeight: fontWeight ?? FontWeight.w400,
      package: packageName,
    );
  }

  //

  // title Styles
  static TextStyle title1(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 18,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  static TextStyle title2(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  static TextStyle title3(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontFamily: fontFamily,
      package: packageName,
    );
  }

  static TextStyle title4(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontFamily: fontFamily,
      package: packageName,
    );
  }
}
