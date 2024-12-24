import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../core/constant/constant_export.dart';

class DateTimePickerBase {
  static Widget dateRangePickerWidget({
    required BuildContext context,
    Function(DateRangePickerSelectionChangedArgs agr)? onSelectionChanged,
    Function()? onCancel,
    Function()? onSubmit,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Tiêu đề
          Text(
            "Select Date Range",
            style: AppTextStyle.title2(color: Colors.black),
          ),
          const SizedBox(height: 8),
          // SfDateRangePicker
          Expanded(
            child: SfDateRangePicker(
                headerStyle: DateRangePickerHeaderStyle(
                    textStyle: AppTextStyle.body3(),
                    textAlign: TextAlign.center,
                    backgroundColor: AppColors.primaryColor.withOpacity(0.1)),
                initialSelectedRange: PickerDateRange(DateTime.now(),
                    DateTime.now().add(const Duration(days: 1))),
                minDate: DateTime.now(),
                maxDate: DateTime(2050, 12, 31),
                backgroundColor: Colors.white,
                selectionMode: DateRangePickerSelectionMode.range,
                startRangeSelectionColor: AppColors.primaryColor,
                endRangeSelectionColor: AppColors.primaryColor,
                selectionColor: Colors.red,
                rangeSelectionColor: AppColors.primaryColor.withOpacity(0.2),
                todayHighlightColor: Colors.transparent,
                selectionShape: DateRangePickerSelectionShape.rectangle,
                onSelectionChanged: onSelectionChanged),
          ),
          // Custom Action Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: onCancel,
                child: Text(
                  "Cancel",
                  style: AppTextStyle.button3(),
                ),
              ),
              TextButton(
                onPressed: onSubmit,
                child: Text(
                  "OK",
                  style: AppTextStyle.button3(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // chon vung ngay
  static void showDateRangePicker(BuildContext context,
      {Function(DateRangePickerSelectionChangedArgs agr)? onSelectionChanged}) {
    Get.dialog(
      Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: dateRangePickerWidget(
          context: context,
          onSelectionChanged: onSelectionChanged,
          onCancel: () {
            Get.back();
          },
          onSubmit: () {
            Get.back();
          },
        ),
      ),
      barrierDismissible: true, // Không cho phép đóng dialog khi nhấn ngoài
    );
  }
}
