import 'package:chatgpt/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

customSnackbar(String message, IconData icon) {
  Get.snackbar(
    'Alert',
    message,
    titleText: Text(
      "alert".tr,
      style: TextStyle(
          color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
    ),
    messageText: Text(
      message.tr,
      style: TextStyle(
          color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
    ),
    icon: Icon(
      icon,
      size: 30.fSize,
    ),
    snackPosition: SnackPosition.BOTTOM,
    duration: const Duration(seconds: 3),
  );
}
