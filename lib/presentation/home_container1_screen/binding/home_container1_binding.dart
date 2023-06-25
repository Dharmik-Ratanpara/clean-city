import '../controller/home_container1_controller.dart';
import 'package:get/get.dart';

class HomeContainer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeContainer1Controller());
  }
}
