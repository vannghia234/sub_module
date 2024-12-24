import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/constant/constant_export.dart';
import '../image_network/common_image.dart';

class BannerPageView extends StatelessWidget {
  const BannerPageView({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    debugPrint("images: ${images.length}");
    final PageController controller = PageController();
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
          controller: controller,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return CommonImage(
              imageUrl: images[index],
              fit: BoxFit.cover,
            );
          },
        ),
        Align(
          alignment: Alignment.topCenter,
          child: IgnorePointer(
            ignoring: true,
            child: Container(
              height: kToolbarHeight * 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.black.withOpacity(0.4),
                    Colors.transparent
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          child: SmoothPageIndicator(
            controller: controller,
            count: images.length,
            effect: const ExpandingDotsEffect(
              expansionFactor: 5,
              activeDotColor: AppColors.borderColor,
              dotHeight: 5,
              dotWidth: 5,
              spacing: 5,
            ),
          ),
        )
      ],
    );
  }
}
