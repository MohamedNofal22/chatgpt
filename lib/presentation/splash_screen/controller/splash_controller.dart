import '../../../core/app_export.dart';
import '../../../routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Get.offNamed(AppRoutes.onbordingScreen);
    });
  }
}
