import 'package:get/get.dart';

import 'onbording_controller.dart';

class OnbordingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnbordingController());
  }
}
