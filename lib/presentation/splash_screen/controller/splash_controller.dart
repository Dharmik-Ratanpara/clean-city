import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/splash_screen/models/splash_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  bool isFirstTime = true;
  bool isLogin = true;

  Future<void> getData() async {
    final data = GetStorage();
    if (data.read("isFirstTime") == null) {
      isFirstTime = true;
    } else {
      isFirstTime = data.read("isFirstTime");
    }
    final auth = FirebaseAuth.instance;
    final currentUser = auth.currentUser;
    if (currentUser == null) {
      isLogin = false;
    }
  }

  @override
  void onReady() {
    super.onReady();
    getData();
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (isLogin) {
        Get.offNamed(
          AppRoutes.homeContainer1Screen,
        );
      } else {
        Get.offNamed(
          AppRoutes.loginScreen,
        );
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
