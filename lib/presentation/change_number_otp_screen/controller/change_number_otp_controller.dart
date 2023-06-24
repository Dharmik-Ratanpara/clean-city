import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/change_number_otp_screen/models/change_number_otp_model.dart';
import 'package:flutter/material.dart';

class ChangeNumberOtpController extends GetxController {
  TextEditingController entermobilenumbController = TextEditingController();

  TextEditingController enterotpController = TextEditingController();

  Rx<ChangeNumberOtpModel> changeNumberOtpModelObj = ChangeNumberOtpModel().obs;

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
