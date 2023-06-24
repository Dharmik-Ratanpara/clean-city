import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/change_number_screen/models/change_number_model.dart';
import 'package:flutter/material.dart';

class ChangeNumberController extends GetxController {
  TextEditingController entermobilenumbController = TextEditingController();

  Rx<ChangeNumberModel> changeNumberModelObj = ChangeNumberModel().obs;

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
