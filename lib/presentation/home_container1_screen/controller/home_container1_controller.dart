import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/home_container1_screen/models/home_container1_model.dart';
import 'package:clean_city/widgets/custom_bottom_bar.dart';

class HomeContainer1Controller extends GetxController {
  Rx<HomeContainer1Model> homeContainer1ModelObj = HomeContainer1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
