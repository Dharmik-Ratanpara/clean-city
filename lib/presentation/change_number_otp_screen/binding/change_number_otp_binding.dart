import '../controller/change_number_otp_controller.dart';
import 'package:get/get.dart';

class ChangeNumberOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangeNumberOtpController());
  }
}
