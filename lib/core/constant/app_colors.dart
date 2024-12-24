import 'package:flutter/material.dart';

class AppColors {
  static Color fromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return Color(int.parse(hexColor, radix: 16));
  }

  // Primary Colors
  static const Color primaryColor = Color(0xFFFF7D0D);
  static const Color scaffoldBackground = Color(0xFFffffff);

  // Semantic Colors
  static const Color semanticAlertColor = Color(0xFFFF1B0A);
  static const Color semanticWarningColor = Color(0xFFFFBE0A);
  static const Color semanticSuccessColor = Color(0xFF41C8B1);
  static const Color sematicInfoColor = Color(0xFF3385D7);
  static const Color semanticOrangeColor = Color(0xFFFF6C0A);

  // Text Colors
  static const Color textPrimary = Color(0xFF313535);
  static const Color textSecondary = Color(0xFF6D7474);
  static const Color textTertiary = Color(0xFF969C9C);
  static const Color textBlackColor = Color(0xff000000);
  static const Color hintTextColor = Color(0xFFAAAAAA);

  // Background Colors
  static const Color backgroundWhiteColor = Color(0xFFFFFFFF);
  static const Color backgroundNeutral = Color(0xFFF3F7F7);

  // Other Colors
  static const Color otherDividerColor = Color(0xFFD5D7D7);
  static const Color otherBorderColor = Color(0xFFC0C4C4);
  static const Color buttonShadowColor = Color(0xFFFFD1AA);
  static const Color borderColor = Color(0xFFEEEEEE);
  // icon color
  static const Color iconColor = primaryColor;
  static const Color iconColorGrey = Color(0xFF6D7474);
  static const Color iconColorWhite = Color(0xFFFFFFFF);
  static const Color iconColorNeutral = Color(0xFFAAAAAA);

  static const Color buttonColor = primaryColor;
  //colors grey
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color lightGrey = Color(0xffD3D3D3);
  static const Color silverGrey = Color(0xffC0C0C0);
  static const Color darkGrey = Color(0xffA9A9A9);
  static const Color grey = Color(0xff808080);
  static const Color dimGrey = Color(0xff696969);
  static const Color slateGrey = Color(0xff708090);
  static const Color darkSlateGrey = Color(0xff2F4F4F);
  static const Color lightSlateGrey = Color(0xff778899);
  // Extended Grey Colors
  // Extended Grey Colors
  static const Color gainsboroColor = Color(0xFFDCDCDC);
  static const Color grey100Color = Color(0xFFF5F5F5);
  static const Color grey200Color = Color(0xFFEEEEEE);
  static const Color grey300Color = Color(0xFFE0E0E0);
  static const Color grey400Color = Color(0xFFBDBDBD);
  static const Color grey500Color = Color(0xFF9E9E9E);
  static const Color grey600Color = Color(0xFF757575);
  static const Color grey700Color = Color(0xFF616161);
  static const Color grey800Color = Color(0xFF424242);
  static const Color grey900Color = Color(0xFF212121);
  static const Color lightGrayColor = Color(0xFFD3D3D3); // Alias for lightGrey
  static const Color veryLightGreyColor = Color(0xFFE8E8E8);
  static const Color ashGreyColor = Color(0xFFB2BEB5);
  static const Color mediumGreyColor = Color(0xFFB0B0B0);
  static const Color charcoalGreyColor = Color(0xFF36454F);
  static const Color platinumGreyColor = Color(0xFFE5E4E2);
  static const Color darkCharcoalColor = Color(0xFF333333);
  static const Color jetGreyColor = Color(0xFF343434);
  static const Color coolGreyColor = Color(0xFF8C92AC);
  static const Color warmGreyColor = Color(0xFF808069);
  static const Color neutralGreyColor = Color(0xFFAAAAAA);

  // item bgr
  static const Color itemBgr = Color(0xFF808080);
}
