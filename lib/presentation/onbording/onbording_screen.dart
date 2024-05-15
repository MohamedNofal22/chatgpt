import 'package:chatgpt/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'controller/onbording_controller.dart';
import 'widgets/onbording.dart';
import 'widgets/nextbutton.dart';

class OnbordingScreen extends GetWidget<OnbordingController> {
  const OnbordingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OnbordingController());
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: 50.h),
            CustomImageView(
              imagePath: ImageConstant.logo,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: 190.w,
              child: Text(
                "welcome_to_chatgpt".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineLarge,
              ),
            ),
            SizedBox(height: 25.h),
            Text(
              "ask_anything_get".tr,
              style: CustomTextStyles.titleMediumSemiBold,
            ),
            SizedBox(height: 30.h),
            Onbording(controller: controller),
            SizedBox(height: 30.h),
          ],
        ),
      ),
      bottomNavigationBar: NextButton(controller: controller),
    );
  }
}
