import 'package:chatgpt/core/app_export.dart';

import '../../../core/utils/image_constant.dart';

class UnbordingContent {
  String title;
  String image;
  String text1;
  String text2;
  String text3;

  UnbordingContent(
      {required this.title,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'examples'.tr,
    image: ImageConstant.examplesImage,
    text1: 'explain_quantum'.tr,
    text2: 'got_any_creative'.tr,
    text3: 'how_do_i_make_an'.tr,
  ),
  UnbordingContent(
    title: 'capabilities'.tr,
    image: ImageConstant.capabilitiesImage,
    text1: 'remembers_what_user'.tr,
    text2: 'allows_user_to_provide'.tr,
    text3: 'trained_to_decline'.tr,
  ),
  UnbordingContent(
    title: 'limitations'.tr,
    image: ImageConstant.limitationsImage,
    text1: 'may_occasionally'.tr,
    text2: 'may_occasionally2'.tr,
    text3: 'limited_knowledge'.tr,
  ),
];
