import 'controller/login_controller.dart';
import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/core/utils/validation_functions.dart';
import 'package:clean_city/widgets/custom_button.dart';
import 'package:clean_city/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                child: Container(
                    height: size.height,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              padding: getPadding(
                                  left: 88, top: 192, right: 88, bottom: 192),
                              decoration: AppDecoration.fillYellow400,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGroup11061,
                                        height: getVerticalSize(136),
                                        width: getHorizontalSize(183),
                                        margin: getMargin(bottom: 280))
                                  ]))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              padding: getPadding(
                                  left: 28, top: 16, right: 28, bottom: 16),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL24),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: getVerticalSize(4),
                                            width: getHorizontalSize(40),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray100,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            2))))),
                                    Padding(
                                        padding: getPadding(left: 4, top: 36),
                                        child: Text("lbl_login_or_signup".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistSemiBold20)),
                                    Padding(
                                        padding: getPadding(left: 4, top: 31),
                                        child: Text("lbl_mobile_number".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistMedium10)),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: controller
                                            .entermobilenumbController,
                                        hintText: "msg_enter_your_mobil".tr,
                                        margin: getMargin(
                                            left: 4, top: 7, right: 3),
                                        textInputAction: TextInputAction.done,
                                        textInputType: TextInputType.number,
                                        validator: (value) {
                                          if (!isNumeric(value)) {
                                            return "Please enter valid number";
                                          }
                                          return null;
                                        }),
                                    CustomButton(
                                        height: getVerticalSize(48),
                                        text: "lbl_next".tr,
                                        margin: getMargin(left: 4, top: 16),
                                        onTap: () {
                                          onTapNext();
                                        }),
                                    Padding(
                                        padding: getPadding(
                                            left: 4, top: 27, bottom: 16),
                                        child: Text("msg_by_clicking_next".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistMedium10))
                                  ])))
                    ])))));
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.otpScreen,
    );
  }
}
