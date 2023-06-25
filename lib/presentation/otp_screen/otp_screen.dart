import 'controller/otp_controller.dart';
import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/widgets/custom_button.dart';
import 'package:clean_city/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class OtpScreen extends GetWidget<OtpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.yellow400,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup11061,
                          height: getVerticalSize(136),
                          width: getHorizontalSize(183)),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 160),
                              padding: getPadding(
                                  left: 32, top: 16, right: 32, bottom: 16),
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
                                        padding: getPadding(top: 34),
                                        child: Text("lbl_otp".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistSemiBold20)),
                                    Padding(
                                        padding: getPadding(top: 34),
                                        child: Text("lbl_enter_otp".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistMedium10)),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.labelenterotpController,
                                        hintText: "lbl_enter_otp".tr,
                                        margin: getMargin(top: 7),
                                        textInputAction: TextInputAction.done),
                                    CustomButton(
                                        height: getVerticalSize(48),
                                        text: "lbl_submit".tr,
                                        margin: getMargin(top: 16),
                                        onTap: () {
                                          onTapSubmit();
                                        }),
                                    Padding(
                                        padding:
                                            getPadding(top: 16, bottom: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 2, bottom: 2),
                                                  child: Text(
                                                      "msg_didnt_received_otp"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistMedium12)),
                                              Container(
                                                  height: getVerticalSize(20),
                                                  width: getHorizontalSize(77),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        20),
                                                                width:
                                                                    getHorizontalSize(
                                                                        47),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .whiteA700))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2),
                                                                child: Text(
                                                                    "lbl_resend_in_0_30"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtUrbanistSemiBold12)))
                                                      ]))
                                            ]))
                                  ])))
                    ]))));
  }

  onTapSubmit() {
    Get.toNamed(
      AppRoutes.homeContainer1Screen,
    );
  }
}
