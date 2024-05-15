import 'package:chatgpt/core/utils/size_utils.dart';
import 'package:chatgpt/theme/app_decoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../main.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_snackbar.dart';
import 'controller/home_controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimary,
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
              child: InkWell(
                overlayColor: MaterialStatePropertyAll(Colors.transparent),
                onTap: () {
                  Get.toNamed(AppRoutes.chatScreen);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrameWhiteA700,
                          width: 20.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Text(
                            "new_chat".tr,
                            style: CustomTextStyles.titleMediumBold.copyWith(
                              color: appTheme.whiteA700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 12.h,
                      width: 6.w,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              decoration: AppDecoration.outlineWhiteA,
            ),
            Spacer(),
            _buildColumnClear(),
            SizedBox(height: 3.h)
          ],
        ),
      ),
    );
  }

  Widget _buildColumnClear() {
    return Container(
      padding: EdgeInsets.fromLTRB(20.w, 26.h, 20.h, 27.h),
      decoration: AppDecoration.outlineWhiteA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            overlayColor: MaterialStatePropertyAll(Colors.transparent),
            onTap: () {
              sharepref!.remove('messages');
              customSnackbar("The conversation has been successfully deleted",
                  Icons.check);
            },
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameWhiteA70020x20,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 16.w, right: 16.w, top: 5.h, bottom: 5.h),
                  child: Text(
                    "clear_conversations".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40.h),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame20x20,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  "upgrade_to_plus".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Container(
                width: 50.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 2.h,
                ),
                decoration: AppDecoration.fillAmber.copyWith(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Text(
                  "new".tr,
                  style: theme.textTheme.labelLarge,
                ),
              )
            ],
          ),
          SizedBox(height: 39.h),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.examplesImage,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  "light_mode".tr,
                  style: theme.textTheme.titleMedium,
                ),
              )
            ],
          ),
          SizedBox(height: 39.h),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame1,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  "updates_faq".tr,
                  style: theme.textTheme.titleMedium,
                ),
              )
            ],
          ),
          SizedBox(height: 39.h),
          GestureDetector(
            onTap: () {
              onTapRowarrowleft();
            },
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    "logout".tr,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  // Navigates to the appScreen when the action is triggered.
  onTapRowarrowleft() {
    // Get.toNamed(AppRoutes.appScreen);
  }
}
