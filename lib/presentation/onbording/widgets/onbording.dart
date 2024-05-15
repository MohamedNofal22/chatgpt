import 'package:chatgpt/core/utils/size_utils.dart';
import 'package:chatgpt/theme/app_decoration.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_image_view.dart';
import '../../onbording/controller/onbording_controller.dart';
import '../../onbording/model/content_model.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key, required this.controller});

  final OnbordingController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller.pageController,
        physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        onPageChanged: (int index) {
          controller.currentIndex.value = index;
        },
        itemCount: contents.length,
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: contents[i].image,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                SizedBox(height: 13.h),
                Text(
                  contents[i].title,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 40.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.w,
                    vertical: 10.h,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    contents[i].text1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appTheme.whiteA700,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.w,
                    vertical: 10.h,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    contents[i].text2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appTheme.whiteA700,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.w,
                    vertical: 10.h,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    contents[i].text3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appTheme.whiteA700,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
