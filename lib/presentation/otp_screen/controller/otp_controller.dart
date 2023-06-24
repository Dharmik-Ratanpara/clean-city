import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/otp_screen/models/otp_model.dart';
import 'package:flutter/material.dart';

class OtpController extends GetxController {
  TextEditingController labelenterotpController = TextEditingController();

  Rx<OtpModel> otpModelObj = OtpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    labelenterotpController.dispose();
  }
}
