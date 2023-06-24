import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/upload_page/models/upload_model.dart';
import 'package:flutter/material.dart';

class UploadController extends GetxController {
  UploadController(this.uploadModelObj);

  TextEditingController addressController = TextEditingController();

  TextEditingController enterareaController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  Rx<UploadModel> uploadModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    addressController.dispose();
    enterareaController.dispose();
    pincodeController.dispose();
  }
}
