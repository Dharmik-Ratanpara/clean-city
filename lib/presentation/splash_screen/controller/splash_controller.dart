import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.loginScreen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
