import 'package:flutter/material.dart';

import 'shimmer_place_holder.dart';

class LoadingBase {
  static Widget base({Color? color, double? size}) {
    return Center(
      child: SizedBox(
        height: size ?? 30,
        width: size ?? 30,
        child: CircularProgressIndicator.adaptive(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(color ?? Colors.white),
        ),
      ),
    );
  }

  /// loading shimmer dạng card với 1 ảnh, 1 title, 3 description
  static Widget shimmerContainerWithText({Color? color, double? size}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerPlaceholder(
                child: Container(
                  width: 70,
                  height: 70,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerPlaceholder.rectangular(
                    width: 100,
                    height: 10,
                  ),
                  const SizedBox(height: 5),
                  ShimmerPlaceholder.rectangular(
                    width: 90,
                    height: 10,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 5),
          ShimmerPlaceholder.rectangular(
            width: 600,
            height: 10,
          ),
          const SizedBox(height: 3),
          ShimmerPlaceholder.rectangular(
            width: 600,
            height: 10,
          ),
          const SizedBox(height: 3),
          ShimmerPlaceholder.rectangular(
            width: 600,
            height: 10,
          ),
        ],
      ),
    );
  }

  /// loading shimmer dạng list item với 1 ảnh, 1 title, 3 description không có bọc dạng card.
  static Widget shimmerItemList() {
    return ShimmerPlaceholder(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            height: 60,
            width: 60,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerPlaceholder.rectangular(
                width: 80,
              ),
              const SizedBox(
                height: 7,
              ),
              ShimmerPlaceholder.rectangular(
                width: 300,
              ),
              const SizedBox(
                height: 3,
              ),
              ShimmerPlaceholder.rectangular(
                width: 300,
              ),
              const SizedBox(
                height: 3,
              ),
              ShimmerPlaceholder.rectangular(
                width: 300,
              ),
            ],
          )
        ],
      ),
    );
  }

  static void showLoadingBase(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.black54,
          body: base(),
        );
      },
    );
  }

  static void closeLoadingBase(BuildContext context) {
    Navigator.of(context).pop();
  }
}
