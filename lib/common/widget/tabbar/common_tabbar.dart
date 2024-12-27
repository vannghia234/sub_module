import 'package:flutter/material.dart';
import 'package:sub_project/core/constant/app_text_style.dart';
import 'package:sub_project/core/constant/constant_export.dart';

class CommonTabbar extends StatelessWidget {
  final List<String> tabs;
  final TabController controller;
  final EdgeInsetsGeometry? padding;
  final bool isScrollable;
  final TextStyle? labelStyle;
  final TextStyle? unselectedLabelStyle;

  const CommonTabbar({
    super.key,
    required this.tabs,
    required this.controller,
    this.padding = EdgeInsets.zero,
    this.isScrollable = true,
    this.labelStyle,
    this.unselectedLabelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: padding,
      dividerHeight: 0,
      isScrollable: isScrollable,
      tabAlignment: TabAlignment.start,
      labelPadding: const EdgeInsets.symmetric(horizontal: 24),
      labelStyle: labelStyle ?? AppTextStyle.labelMedium2(),
      unselectedLabelStyle:
          unselectedLabelStyle ?? AppTextStyle.labelMedium3(color: Colors.grey),
      indicator: const UnderlineTabIndicator(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        borderSide: BorderSide(
          width: 3,
          color: AppColors.primaryColor,
        ),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      controller: controller,
      tabs: tabs
          .map((status) => Tab(
                // height: ,
                text: status,
              ))
          .toList(),
    );
  }
}
