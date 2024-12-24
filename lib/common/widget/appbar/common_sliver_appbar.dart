import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constant/constant_export.dart';

///This is a highly customizable sliver appbar that can be used in any screen

class CommonSliverAppbar extends StatelessWidget {
  ///[flexibleSpaceBackground] is the background widget of the appbar or just multiple widgets
  final Widget? flexibleSpaceBackground, titleWidget;

  ///[primaryActionIcon] is the icon of the primary action button
  ///to use this you must also provide [onPrimaryActionPressed]
  ///[secondaryActionIcon] is the icon of the secondary action button
  ///to use this you must also provide [onSecondaryActionPressed]
  final IconData? primaryActionIcon, secondaryActionIcon;

  ///[iconsColor] is the color of the icons in the appbar including the leading and actions icons
  final Color iconsColor, titleColor;

  ///[backgroundColor] is the background color of the appbar
  final Color? backgroundColor;

  ///[elevation] is the elevation of the appbar
  ///[titleExpandScale] is the scale of the title when the appbar is expanded
  ///[expandedHeight] is the height of the appbar when it is expanded
  ///[collapseHeight] is the height of the appbar when it is collapsed
  ///[toolbarHeight] is the height of the toolbar
  ///the [collapseHeight] must be equal or greater than the [toolbarHeight]
  final double elevation,
      titleExpandScale,
      expandedHeight,
      collapseHeight,
      toolbarHeight;

  ///[systemOverlayStyle] is the system overlay style of the appbar
  ///this property is used to change the status bar color
  final SystemUiOverlayStyle systemOverlayStyle;

  ///[title] is the title of the appbar
  ///this is not needed if you provide [titleWidget]
  final String? title;

  ///[onPrimaryActionPressed] is the callback of the primary action button
  ///[onSecondaryActionPressed] is the callback of the secondary action button
  ///when you need to show the actions you must provide [onPrimaryActionPressed] or [onSecondaryActionPressed]
  final VoidCallback? onPrimaryActionPressed, onSecondaryActionPressed;

  ///[showActions] is a boolean that determines if the actions should be shown
  ///(this could be use to animated the actions)
  ///[showLeading] is a boolean that determines if the leading should be shown
  ///[automaticallyImplyLeading] is a boolean that determines if the leading should be shown
  ///[isSnap] is a boolean that determines if the appbar should snap
  ///[isFloating] is a boolean that determines if the appbar should float
  ///[isPinned] is a boolean that determines if the appbar should be pinned
  final bool showActions,
      showLeading,
      automaticallyImplyLeading,
      isSnap,
      isFloating,
      isPinned;
  final EdgeInsets flexibleSpaceTitlePadding;
  const CommonSliverAppbar({
    super.key,
    this.systemOverlayStyle = SystemUiOverlayStyle.dark,
    this.backgroundColor,
    this.iconsColor = Colors.black,
    this.titleColor = Colors.black,
    this.flexibleSpaceTitlePadding = EdgeInsets.zero,
    this.elevation = 0,
    this.titleExpandScale = 1.5,
    this.expandedHeight = 250.0,
    this.toolbarHeight = kToolbarHeight,
    this.collapseHeight = kToolbarHeight,
    this.flexibleSpaceBackground,
    this.titleWidget,
    this.title,
    this.showActions = true,
    this.showLeading = true,
    this.automaticallyImplyLeading = false,
    this.isSnap = false,
    this.isFloating = false,
    this.isPinned = true,
    this.primaryActionIcon,
    this.secondaryActionIcon,
    this.onPrimaryActionPressed,
    this.onSecondaryActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: systemOverlayStyle,
      elevation: elevation,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: backgroundColor,
      leading: AnimatedSlide(
        offset: showLeading ? Offset.zero : const Offset(0, -1),
        duration: const Duration(milliseconds: 200),
        child: IconButton(
          color: iconsColor,
          iconSize: 24,
          icon: const Icon(CupertinoIcons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      collapsedHeight: collapseHeight,
      expandedHeight: expandedHeight,
      toolbarHeight: toolbarHeight,
      floating: isFloating,
      pinned: isPinned,
      snap: isSnap,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: flexibleSpaceTitlePadding,
        title: titleWidget ??
            (title != null
                ? Text(
                    title ?? "",
                    style: AppTextStyle.label2(color: titleColor)
                        .copyWith(fontWeight: FontWeight.w600),
                  )
                : null),
        centerTitle: true,
        collapseMode: CollapseMode.parallax,
        expandedTitleScale: titleExpandScale,
        background: flexibleSpaceBackground,
      ),
      actions: [
        if (onPrimaryActionPressed != null) ...[
          AnimatedSlide(
            offset: showActions ? Offset.zero : const Offset(0, -1),
            duration: const Duration(milliseconds: 200),
            child: Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    primaryActionIcon ?? Icons.notifications,
                    color: iconsColor,
                  ),
                  onPressed: () {},
                ),
                if (primaryActionIcon == null)
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
        if (onSecondaryActionPressed != null) ...[
          AnimatedSlide(
            offset: showActions ? Offset.zero : const Offset(0, -1),
            duration: const Duration(milliseconds: 200),
            child: IconButton(
              icon: Icon(secondaryActionIcon ?? Icons.more_vert,
                  color: iconsColor),
              onPressed: () {},
            ),
          ),
        ],
        const SizedBox(width: 8),
      ],
    );
  }
}
