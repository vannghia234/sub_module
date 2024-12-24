import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../constant/app_colors.dart';

ElevatedButtonThemeData elevatedButtonTheme(
  BuildContext context,
  ColorScheme colorScheme,
) {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
    ),
  );
}

SnackBarThemeData snackBarThemeData(ColorScheme colorScheme) {
  return const SnackBarThemeData(
    elevation: 0,
    behavior: SnackBarBehavior.fixed,
    dismissDirection: DismissDirection.down,
    backgroundColor: AppColors.primaryColor,
    contentTextStyle: TextStyle(
      fontSize: 14,
      color: AppColors.white,
    ),
    actionTextColor: Colors.yellow,
  );
}

InputDecorationTheme get inputDecorationTheme {
  final borderStyle = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.black26, width: 1.0),
    borderRadius: BorderRadius.circular(12.0),
  );

  final errorStyle = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.red, width: 1.0),
    borderRadius: BorderRadius.circular(12.0),
  );

  return InputDecorationTheme(
    errorBorder: errorStyle,
    focusedErrorBorder: errorStyle,
    focusedBorder: borderStyle,
    enabledBorder: borderStyle,
    outlineBorder: const BorderSide(color: Colors.black26, width: 1.0),
    filled: true,
    fillColor: Colors.white,
    labelStyle: const TextStyle(
      color: Colors.black45,
      fontSize: 14,
    ),
    hintStyle: const TextStyle(
      color: Colors.black45,
      fontSize: 14,
    ),
    isDense: true,
  );
}

NavigationBarThemeData navigationBarThemeData(
  ColorScheme colorScheme,
  TextTheme? textTheme,
) {
  return NavigationBarThemeData(
    backgroundColor: colorScheme.surface,
    labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
    labelTextStyle: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return textTheme?.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: colorScheme.onSurface,
        );
      } else {
        return textTheme?.bodyLarge?.copyWith(
          color: colorScheme.onSurface.withOpacity(0.75),
        );
      }
    }),
  );
}

NavigationDrawerThemeData navigationDrawerThemeData(
  ColorScheme colorScheme,
  TextTheme? textTheme,
) {
  return NavigationDrawerThemeData(
    backgroundColor: colorScheme.surface,
    labelTextStyle: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return textTheme?.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
        );
      } else {
        return textTheme?.bodyLarge;
      }
    }),
  );
}

DrawerThemeData drawerThemeData(
  ColorScheme colorScheme,
  TextTheme? textTheme,
) {
  return DrawerThemeData(
    backgroundColor: colorScheme.surface,
  );
}

FloatingActionButtonThemeData floatingActionButton(ColorScheme colorScheme) {
  return FloatingActionButtonThemeData(
    backgroundColor: colorScheme.primary,
    foregroundColor: colorScheme.onPrimary,
  );
}

AppBarTheme appBarTheme(SystemUiOverlayStyle systemUiOverlayStyle) {
  return AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    systemOverlayStyle: systemUiOverlayStyle.copyWith(
      statusBarColor: Colors.transparent,
    ),
  );
}

AppBarTheme appBarThemeLight(ColorScheme colorScheme) {
  return AppBarTheme(
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ),
  );
}

AppBarTheme appBarThemeDark(ColorScheme colorScheme) {
  return AppBarTheme(
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ),
  );
}

DialogTheme get dialogTheme {
  return DialogTheme(
    titleTextStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );
}

TimePickerThemeData get timePickerTheme {
  return TimePickerThemeData(
    helpTextStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
    hourMinuteTextStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    hourMinuteShape: const CircleBorder(),
  );
}

CheckboxThemeData get checkboxTheme {
  return const CheckboxThemeData(
    // overlayColor: WidgetStatePropertyAll<Color>(AppColors.red),
    fillColor: WidgetStatePropertyAll<Color>(AppColors.white),
    checkColor: WidgetStatePropertyAll<Color>(AppColors.white),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
    side: BorderSide(
      color: Colors.black26,
    ),
  );
}

DropdownMenuThemeData get dropdownMenuTheme {
  return DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      filled: true,
      constraints: BoxConstraints.tight(const Size.fromHeight(48)),
    ),
    menuStyle: const MenuStyle(
      backgroundColor: WidgetStatePropertyAll<Color>(Colors.white),
    ),
  );
}

extension ColorExtension on Color {
  /// Convert the color to a darken color based on the [percent]
  Color darken([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = 1 - percent / 100;
    return Color.fromARGB(alpha, (red * value).round(), (green * value).round(),
        (blue * value).round());
  }
}

// CustomColors lightCustomColor = CustomColors(
//   red: Colors.red.shade400,
//   green: Colors.green.shade400,
//   blue: Colors.blue.shade400,
// );
// CustomColors darkCustomColor = CustomColors(
//   red: Colors.red.shade400,
//   green: Colors.green.shade400,
//   blue: Colors.blue.shade400,
// );
