import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/home_container_page/models/home_container_model.dart';
import 'package:flutter/material.dart';

class HomeContainerController extends GetxController {
  HomeContainerController(this.homeContainerModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeContainerModel> homeContainerModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
