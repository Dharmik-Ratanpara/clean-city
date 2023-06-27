import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/profile_page/models/profile_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileController extends GetxController {
  ProfileController(this.profileModelObj);

  Rx<ProfileModel> profileModelObj;

  var number = ''.obs;

  void loadData() {
    FirebaseAuth _auth = FirebaseAuth.instance;

    number.value = _auth.currentUser!.phoneNumber.toString();
  }

  Future<void> signout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(AppRoutes.loginScreen);
  }

  @override
  void onReady() {
    super.onReady();
    loadData();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
