import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constant/app_colors.dart';
import 'other_theme.dart';

ThemeData appTheme(
  BuildContext context,
  ColorScheme colorScheme,
  TextTheme textTheme,
  SystemUiOverlayStyle systemUiOverlayStyle,
) {
  return ThemeData.from(
    colorScheme: colorScheme,
    useMaterial3: true,
  ).copyWith(
    textTheme: textTheme,
    colorScheme: colorScheme,
    dialogTheme: dialogTheme,
    timePickerTheme: timePickerTheme,
    appBarTheme: appBarTheme(systemUiOverlayStyle),
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    snackBarTheme: snackBarThemeData(colorScheme),
    dialogBackgroundColor: AppColors.white,
    navigationBarTheme: navigationBarThemeData(
      colorScheme,
      textTheme,
    ),
    navigationDrawerTheme: navigationDrawerThemeData(
      colorScheme,
      textTheme,
    ),
    drawerTheme: drawerThemeData(
      colorScheme,
      textTheme,
    ),
    applyElevationOverlayColor: true,
    inputDecorationTheme: inputDecorationTheme,
    elevatedButtonTheme: elevatedButtonTheme(
      context,
      colorScheme,
    ),
    checkboxTheme: checkboxTheme,
    dropdownMenuTheme: dropdownMenuTheme,
    dividerTheme: const DividerThemeData(color: AppColors.otherDividerColor),
  );
}
