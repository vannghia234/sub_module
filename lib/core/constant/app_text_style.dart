import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  static String fontFamily = 'poppins';
  static TextStyle labelMedium1(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        color: color ?? AppColors.textBlackColor,
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontFamily: fontFamily);
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
        fontFamily: fontFamily);
  }

  static TextStyle labelMedium3(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 12,
      fontFamily: fontFamily,
      fontWeight: fontWeight ?? FontWeight.w500,
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
    );
  }

  static TextStyle label2(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily,
    );
  }

  static TextStyle label3(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily,
    );
  }

  static TextStyle label4(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 10,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily,
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
    );
  }

  static TextStyle button2(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.white,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily,
    );
  }

  static TextStyle button3(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.white,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily,
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
    );
  }

  static TextStyle body2(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontFamily: fontFamily,
    );
  }

  static TextStyle body3(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontFamily: fontFamily,
    );
  }

  static TextStyle body4(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 10,
      fontFamily: fontFamily,
      fontWeight: fontWeight ?? FontWeight.w400,
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
    );
  }

  static TextStyle caption2(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 10,
      fontFamily: fontFamily,
      fontWeight: fontWeight ?? FontWeight.w400,
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
    );
  }

  static TextStyle title2(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontFamily: fontFamily,
    );
  }

  static TextStyle title3(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontFamily: fontFamily,
    );
  }

  static TextStyle title4(
      {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? AppColors.textBlackColor,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontFamily: fontFamily,
    );
  }
}
