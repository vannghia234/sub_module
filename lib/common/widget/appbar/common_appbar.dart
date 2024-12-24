import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constant/app_text_style.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? isShowLeading;
  final bool? centerTitle;
  final double? appbarHeight, elevation, scrollElevation;
  final Color leadingColor;
  final Color? backgroundColor;
  final PreferredSizeWidget? bottomWidget;
  final VoidCallback? onBackPressed;
  final TextStyle? titleStyle;
  final SystemUiOverlayStyle? systemUiOverlayStyle;
  final List<Widget>? actions;
  const CommonAppBar({
    required this.title,
    super.key,
    this.isShowLeading = true,
    this.centerTitle = false,
    this.backgroundColor,
    this.leadingColor = Colors.white,
    this.appbarHeight,
    this.bottomWidget,
    this.actions,
    this.elevation = 0,
    this.scrollElevation = 0,
    this.onBackPressed,
    this.titleStyle,
    this.systemUiOverlayStyle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: systemUiOverlayStyle,
      backgroundColor: backgroundColor,
      elevation: elevation,
      scrolledUnderElevation: scrollElevation,
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      toolbarHeight: kToolbarHeight,
      flexibleSpace: backgroundColor == null
          ? Container(
              color: backgroundColor,
            )
          : null,
      titleSpacing: 0,
      leadingWidth: 56,
      bottom: bottomWidget,
      actions: actions,
      leading: isShowLeading!
          ? IconButton(
              icon: Icon(CupertinoIcons.chevron_left, color: leadingColor),
              onPressed: onBackPressed ??
                  () {
                    Navigator.pop(context);
                  },
            )
          : null,
      title: Text(title,
          style: titleStyle ??
              AppTextStyle.label1(fontSize: 18, color: Colors.white)
                  .copyWith(height: 1.3)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appbarHeight ?? kToolbarHeight);
}
