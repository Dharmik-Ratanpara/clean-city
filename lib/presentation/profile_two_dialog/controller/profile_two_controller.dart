import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/profile_two_dialog/models/profile_two_model.dart';
import 'package:flutter/material.dart';

class ProfileTwoController extends GetxController {
  TextEditingController entermobilenumbController = TextEditingController();

  Rx<ProfileTwoModel> profileTwoModelObj = ProfileTwoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    entermobilenumbController.dispose();
  }
}
