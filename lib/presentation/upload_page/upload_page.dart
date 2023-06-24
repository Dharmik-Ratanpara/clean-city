import 'controller/upload_controller.dart';
import 'models/upload_model.dart';
import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/core/utils/validation_functions.dart';
import 'package:clean_city/widgets/app_bar/appbar_image.dart';
import 'package:clean_city/widgets/app_bar/custom_app_bar.dart';
import 'package:clean_city/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class UploadPage extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  UploadController controller = Get.put(UploadController(UploadModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            32,
          ),
          leadingWidth: 41,
          leading: AppbarImage(
            height: getVerticalSize(
              9,
            ),
            width: getHorizontalSize(
              25,
            ),
            svgPath: ImageConstant.imgShare,
            margin: getMargin(
              left: 16,
              top: 12,
              bottom: 11,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                8,
              ),
              width: getHorizontalSize(
                14,
              ),
              svgPath: ImageConstant.imgSignal,
              margin: getMargin(
                left: 16,
                top: 12,
                right: 12,
              ),
            ),
            AppbarImage(
              height: getVerticalSize(
                9,
              ),
              width: getHorizontalSize(
                12,
              ),
              svgPath: ImageConstant.imgSignalGray900,
              margin: getMargin(
                left: 8,
                top: 11,
                right: 12,
              ),
            ),
            AppbarImage(
              height: getVerticalSize(
                9,
              ),
              width: getHorizontalSize(
                20,
              ),
              svgPath: ImageConstant.imgComputer,
              margin: getMargin(
                left: 9,
                top: 11,
                right: 28,
              ),
            ),
          ],
          styleType: Style.bgFillWhiteA700,
        ),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              top: 11,
              bottom: 11,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  padding: getPadding(
                    left: 16,
                    top: 7,
                    right: 16,
                    bottom: 7,
                  ),
                  decoration: AppDecoration.txtFillWhiteA700,
                  child: Text(
                    "lbl_add_post".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold30,
                  ),
                ),
                Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray100,
                ),
                Container(
                  margin: getMargin(
                    left: 26,
                    top: 17,
                    right: 27,
                  ),
                  padding: getPadding(
                    left: 68,
                    top: 31,
                    right: 68,
                    bottom: 31,
                  ),
                  decoration: AppDecoration.fillGray200.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: getMargin(
                          top: 23,
                        ),
                        color: ColorConstant.gray100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder38,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            78,
                          ),
                          width: getHorizontalSize(
                            76,
                          ),
                          padding: getPadding(
                            all: 19,
                          ),
                          decoration: AppDecoration.fillGray100.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder38,
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle638,
                                height: getVerticalSize(
                                  39,
                                ),
                                width: getHorizontalSize(
                                  38,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    19,
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          168,
                        ),
                        margin: getMargin(
                          top: 23,
                        ),
                        child: Text(
                          "msg_select_photo_or".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtUrbanistRomanMedium17,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 26,
                      top: 36,
                    ),
                    child: Text(
                      "lbl_location".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistSemiBold20Black900,
                    ),
                  ),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: controller.addressController,
                  hintText: "lbl_enter_address".tr,
                  margin: getMargin(
                    left: 26,
                    top: 9,
                    right: 26,
                  ),
                  fontStyle: TextFormFieldFontStyle.UrbanistRomanRegular14,
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: controller.enterareaController,
                  hintText: "lbl_enter_area".tr,
                  margin: getMargin(
                    left: 26,
                    top: 12,
                    right: 26,
                  ),
                  fontStyle: TextFormFieldFontStyle.UrbanistRomanRegular14,
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: controller.pincodeController,
                  hintText: "lbl_enter_pincode".tr,
                  margin: getMargin(
                    left: 26,
                    top: 10,
                    right: 26,
                  ),
                  fontStyle: TextFormFieldFontStyle.UrbanistRomanRegular14,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.number,
                  validator: (value) {
                    if (!isNumeric(value)) {
                      return "Please enter valid number";
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: getPadding(
                    left: 26,
                    top: 20,
                    right: 27,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 5,
                          bottom: 5,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            137,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.black900,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                        ),
                        child: Text(
                          "lbl_or".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanSemiBold10,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 5,
                          bottom: 5,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            145,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.black900,
                            indent: getHorizontalSize(
                              8,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 26,
                    top: 19,
                    right: 27,
                    bottom: 5,
                  ),
                  padding: getPadding(
                    left: 56,
                    top: 6,
                    right: 56,
                    bottom: 6,
                  ),
                  decoration: AppDecoration.fillIndigo900.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 9,
                        ),
                        child: Text(
                          "msg_use_current_location".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistSemiBold16WhiteA700,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPlacemarker,
                        height: getSize(
                          20,
                        ),
                        width: getSize(
                          20,
                        ),
                        margin: getMargin(
                          left: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
