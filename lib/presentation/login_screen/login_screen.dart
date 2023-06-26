import 'controller/login_controller.dart';
import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/core/utils/validation_functions.dart';
import 'package:clean_city/widgets/custom_button.dart';
import 'package:clean_city/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding:
                      getPadding(left: 88, top: 192, right: 88, bottom: 192),
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
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: getPadding(left: 28, top: 16, right: 28, bottom: 16),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL24),
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
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(2))))),
                      Padding(
                          padding: getPadding(left: 4, top: 36),
                          child: Text("lbl_login_or_signup".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistSemiBold20)),
                      Padding(
                          padding: getPadding(left: 4, top: 31),
                          child: Text("lbl_mobile_number".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistMedium10)),
                      Obx(
                        () {
                          if (controller.isLoading.value) {
                            return const CircularProgressIndicator();
                          } else {
                            return controller.isCodeSent.value
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Form(
                                        key: controller.otpFormKey,
                                        child: Column(
                                          children: [
                                            TextFormField(
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return "Please enter OTP";
                                                }
                                                return null;
                                              },
                                              keyboardType:
                                                  TextInputType.number,
                                              controller:
                                                  controller.otpController,
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: "Enter OTP",
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            if (!controller.isCodeResent.value)
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    controller.isResendActive
                                                            .value
                                                        ? ""
                                                        : "After ${controller.start} sec\nyou can resend code.",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: controller
                                                            .isResendActive
                                                            .value
                                                        ? () {
                                                            controller
                                                                .resendOtp();
                                                            controller
                                                                .isCodeResent
                                                                .value = true;
                                                          }
                                                        : null,
                                                    child: const Text(
                                                        "Resend OTP"),
                                                  )
                                                ],
                                              ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      ElevatedButton(
                                        onPressed: () {
                                          controller.verifyOtp();
                                        },
                                        child: const Text("Verify OTP"),
                                      ),
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 10),
                                      Form(
                                        key: controller.formKey,
                                        child: getTextFormField(
                                          textEditingController:
                                              controller.numberController,
                                          hintText: "msg_enter_your_mobil".tr,
                                          textInputType: TextInputType.number,
                                          validation: (value) {
                                            if (!isNumeric(value)) {
                                              return "Please enter valid number";
                                            }
                                            if (value?.length != 10) {
                                              return "Please enter valid number";
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: TextButton(
                                          onPressed: () {
                                            controller.sendOtp();
                                          },
                                          child: const Text("Send OTP"),
                                        ),
                                      ),
                                    ],
                                  );
                          }
                        },
                      ),
                      Padding(
                        padding: getPadding(left: 4, top: 27, bottom: 16),
                        child: Text("msg_by_clicking_next".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistMedium10),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.otpScreen,
    );
  }
}
