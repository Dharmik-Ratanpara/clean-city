import 'controller/profile_one_controller.dart';
import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/core/utils/validation_functions.dart';
import 'package:clean_city/widgets/custom_button.dart';
import 'package:clean_city/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileOneDialog extends StatelessWidget {
  ProfileOneDialog(this.controller);

  ProfileOneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        328,
      ),
      padding: getPadding(
        left: 16,
        top: 14,
        right: 16,
        bottom: 14,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 5,
            ),
            child: Text(
              "lbl_change_number".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistSemiBold16,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 31,
            ),
            child: Text(
              "lbl_mobile_number".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistMedium10,
            ),
          ),
          CustomTextFormField(
            focusNode: FocusNode(),
            controller: controller.entermobilenumbController,
            hintText: "msg_enter_your_mobil".tr,
            margin: getMargin(
              top: 7,
            ),
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
              top: 16,
            ),
            child: Text(
              "lbl_otp".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistMedium10,
            ),
          ),
          CustomTextFormField(
            focusNode: FocusNode(),
            controller: controller.enterotpController,
            hintText: "lbl_enter_otp".tr,
            margin: getMargin(
              top: 7,
            ),
            textInputAction: TextInputAction.done,
          ),
          CustomButton(
            height: getVerticalSize(
              48,
            ),
            text: "lbl_change".tr,
            margin: getMargin(
              top: 16,
            ),
          ),
          Container(
            width: getHorizontalSize(
              290,
            ),
            margin: getMargin(
              top: 32,
              right: 5,
            ),
            child: Text(
              "msg_this_will_permenently".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRegular12,
            ),
          ),
        ],
      ),
    );
  }
}
