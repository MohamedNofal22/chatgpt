import 'package:chatgpt/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 108.adaptSize,
              width: 108.adaptSize,
            ),
            SizedBox(height: 40.h),
            Text(
              "chatgpt".tr,
              style: theme.textTheme.displayMedium,
            )
          ],
        ),
      ),
    );
  }
}
