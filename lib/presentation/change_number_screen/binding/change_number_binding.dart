import '../controller/change_number_controller.dart';
import 'package:get/get.dart';

class ChangeNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangeNumberController());
  }
}
