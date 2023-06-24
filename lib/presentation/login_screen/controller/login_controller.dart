import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController entermobilenumbController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

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
