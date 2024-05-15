import 'package:chatgpt/core/utils/size_utils.dart';
import 'package:chatgpt/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../controller/onbording_controller.dart';
import '../model/content_model.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, required this.controller});

  final OnbordingController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 110.h,
        child: Column(
          children: [
            AnimatedSmoothIndicator(
              activeIndex: controller.currentIndex.value,
              count: contents.length,
              effect: ScrollingDotsEffect(
                spacing: 12,
                activeDotColor: theme.colorScheme.primary,
                dotColor: appTheme.whiteA700.withOpacity(0.2),
                dotHeight: 2.h,
                dotWidth: 28.w,
              ),
            ),
            SizedBox(height: 15.h),
            CustomElevatedButton(
              text: controller.currentIndex == contents.length - 1
                  ? "Let's Chat"
                  : "Next",
              margin: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              onPressed: () {
                if (controller.currentIndex == contents.length - 1) {
                  Get.offAllNamed(AppRoutes.homeScreen);
                }
                controller.pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
