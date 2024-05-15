import 'package:chatgpt/core/utils/size_utils.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'controller/chat_controller.dart';

class ChatScreen extends GetWidget<ChatController> {
  const ChatScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomImageView(
              imagePath: ImageConstant.logo,
              width: 20.w,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            InkWell(
              overlayColor: MaterialStatePropertyAll(Colors.transparent),
              onTap: () {
                Get.back();
              },
              child: Padding(
                padding: EdgeInsets.only(
                    left: 5.w, right: 10.w, top: 10.h, bottom: 10.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftBack,
                  width: 10.w,
                ),
              ),
            ),
            SizedBox(width: 5.w),
            Text(
              "back".tr,
              style: CustomTextStyles.titleMediumBold
                  .copyWith(color: appTheme.whiteA700),
            ),
          ],
        ),
      ),
      body: GetBuilder<ChatController>(
        builder: (controller) {
          return DashChat(
            scrollToBottomOptions: ScrollToBottomOptions(),
            typingUsers: controller.typing,
            messageOptions: MessageOptions(textColor: Colors.grey),
            currentUser: controller.user,
            onSend: (ChatMessage Message) {
              controller.message(Message);
            },
            messages: controller.messages,
          );
        },
      ),
    );
  }
}
