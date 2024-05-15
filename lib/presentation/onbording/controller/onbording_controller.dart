import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnbordingController extends GetxController {
  RxInt currentIndex = 0.obs;
  late PageController pageController;

  @override
  void onInit() async {
    pageController = await PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
