import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/profile_one_dialog/models/profile_one_model.dart';
import 'package:flutter/material.dart';

class ProfileOneController extends GetxController {
  TextEditingController entermobilenumbController = TextEditingController();

  TextEditingController enterotpController = TextEditingController();

  Rx<ProfileOneModel> profileOneModelObj = ProfileOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    entermobilenumbController.dispose();
    enterotpController.dispose();
  }
}
