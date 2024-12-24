import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double kItemExtent = 32.0;

void showCupertinoPicker(Widget child, BuildContext context) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => Container(
      height: 250,
      padding: const EdgeInsets.only(top: 6.0),
      // The Bottom margin is provided to align the popup above the system navigation bar.
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      // Provide a background color for the popup.
      color: CupertinoColors.systemBackground.resolveFrom(context),
      // Use a SafeArea widget to avoid system overlaps.
      child: SafeArea(
        top: false,
        child: Material(
          color: Colors.white,
          child: child,
        ),
      ),
    ),
  );
}

/// item here
// CupertinoPicker(
//                     magnification: 1.22,
//                     squeeze: 1.22,
//                     useMagnifier: true,
//                     itemExtent: kItemExtent,
//                     // This sets the initial item.
//                     scrollController: FixedExtentScrollController(
//                       initialItem:
//                           productController.selectedIndexLocation.value,
//                     ),
//                     // This is called when selected item is changed.
//                     onSelectedItemChanged: (int selectedItem) async {
//                       productController.selectedIndexLocation.value =
//                           selectedItem;
//                     },
//                     children: List<Widget>.generate(
//                         productController.provinceFilterList.length,
//                         (int index) {
//                       return Center(
//                           child: Text(
//                         productController.provinceFilterList[index].name ?? "",
//                         style: AppTextStyle.bodyMedium(),
//                       ));
//                     }),
//                   )