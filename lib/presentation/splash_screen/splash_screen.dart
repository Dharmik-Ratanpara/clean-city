import 'controller/splash_controller.dart';
import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/widgets/app_bar/appbar_image.dart';
import 'package:clean_city/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.yellow400,
            appBar: CustomAppBar(
                height: getVerticalSize(32),
                leadingWidth: 41,
                leading: AppbarImage(
                    height: getVerticalSize(9),
                    width: getHorizontalSize(25),
                    svgPath: ImageConstant.imgShare,
                    margin: getMargin(left: 16, top: 12, bottom: 11)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(8),
                      width: getHorizontalSize(14),
                      svgPath: ImageConstant.imgSignal,
                      margin: getMargin(left: 16, top: 12, right: 12)),
                  AppbarImage(
                      height: getVerticalSize(9),
                      width: getHorizontalSize(12),
                      svgPath: ImageConstant.imgSignalGray900,
                      margin: getMargin(left: 8, top: 11, right: 12)),
                  AppbarImage(
                      height: getVerticalSize(9),
                      width: getHorizontalSize(20),
                      svgPath: ImageConstant.imgComputer,
                      margin: getMargin(left: 9, top: 11, right: 28))
                ],
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup11061,
                          height: getVerticalSize(136),
                          width: getHorizontalSize(183),
                          margin: getMargin(bottom: 332))
                    ]))));
  }
}
