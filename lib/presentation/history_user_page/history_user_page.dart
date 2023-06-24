import 'controller/history_user_controller.dart';
import 'models/history_user_model.dart';
import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/widgets/app_bar/appbar_image.dart';
import 'package:clean_city/widgets/app_bar/custom_app_bar.dart';
import 'package:clean_city/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class HistoryUserPage extends StatelessWidget {
  HistoryUserController controller =
      Get.put(HistoryUserController(HistoryUserModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
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
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 11),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(104),
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: double.maxFinite,
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 3,
                                                      right: 16,
                                                      bottom: 3),
                                                  decoration: AppDecoration
                                                      .txtFillWhiteA700,
                                                  child: Text(
                                                      "lbl_my_history".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold30)),
                                              Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: ColorConstant.gray100)
                                            ])),
                                    CustomDropDown(
                                        width: double.maxFinite,
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 23),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdown)),
                                        hintText: "lbl_active".tr,
                                        alignment: Alignment.bottomCenter,
                                        items: controller.historyUserModelObj
                                            .value.dropdownItemList.value,
                                        onChanged: (value) {
                                          controller.onSelected(value);
                                        })
                                  ])),
                          Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(top: 4),
                              color: ColorConstant.blueGray100,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: ColorConstant.black900,
                                      width: getHorizontalSize(1)),
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL15),
                              child: Container(
                                  height: getVerticalSize(226),
                                  width: getHorizontalSize(310),
                                  decoration: AppDecoration.outlineBlack900
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL15),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgBiometrictechn,
                                            height: getVerticalSize(226),
                                            width: getHorizontalSize(310),
                                            radius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    getHorizontalSize(15)),
                                                topRight: Radius.circular(
                                                    getHorizontalSize(15))),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(left: 11),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 2,
                                                              bottom: 193),
                                                          child: Text(
                                                              "lbl_view_on_map"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtUrbanistRomanBold12
                                                                  .copyWith(
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgLocation,
                                                          height:
                                                              getVerticalSize(
                                                                  16),
                                                          width:
                                                              getHorizontalSize(
                                                                  18),
                                                          margin: getMargin(
                                                              bottom: 194)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgUser,
                                                          height:
                                                              getVerticalSize(
                                                                  6),
                                                          width:
                                                              getHorizontalSize(
                                                                  40),
                                                          margin: getMargin(
                                                              left: 33,
                                                              top: 205))
                                                    ])))
                                      ]))),
                          Container(
                              margin: getMargin(left: 25, right: 24),
                              padding: getPadding(
                                  left: 7, top: 3, right: 7, bottom: 3),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: fs.Svg(ImageConstant.imgGroup9),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 7),
                                        child: Text("msg_vgec_boys_hostel".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanRegular12)),
                                    Padding(
                                        padding: getPadding(top: 9),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 4),
                                                  child: Text("lbl_99".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanRegular20)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconsaxbulkdirectup,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  margin: getMargin(
                                                      left: 6, bottom: 5)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconsaxbulkdirectupBlack900,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  margin: getMargin(
                                                      left: 6, bottom: 5)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 6, bottom: 4),
                                                  child: Text("lbl_3".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanRegular20)),
                                              Spacer(),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Text(
                                                      "msg_yesterday_5_59_pm"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanRegular10))
                                            ]))
                                  ])),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 20),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray400),
                                        Padding(
                                            padding: getPadding(
                                                left: 16,
                                                top: 13,
                                                right: 23,
                                                bottom: 9),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_completed".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold23),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdown,
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      margin:
                                                          getMargin(bottom: 4))
                                                ]))
                                      ]))),
                          Container(
                              height: getVerticalSize(317),
                              width: getHorizontalSize(310),
                              margin: getMargin(top: 10),
                              child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 12, bottom: 40),
                                            child: Row(children: [
                                              Text("lbl_98".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanRegular20),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconsaxbulkdirectupGray50001,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  margin: getMargin(left: 6)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconsaxbulkdirectupGray5000124x24,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  margin: getMargin(left: 6))
                                            ]))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  color:
                                                      ColorConstant.blueGray100,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .black900,
                                                          width:
                                                              getHorizontalSize(
                                                                  1)),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL15),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(226),
                                                      width: getHorizontalSize(
                                                          310),
                                                      decoration: AppDecoration
                                                          .outlineBlack900
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderTL15),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgBiometrictechn,
                                                                height:
                                                                    getVerticalSize(
                                                                        226),
                                                                width:
                                                                    getHorizontalSize(
                                                                        310),
                                                                radius: BorderRadius.only(
                                                                    topLeft: Radius.circular(
                                                                        getHorizontalSize(
                                                                            15)),
                                                                    topRight: Radius.circular(
                                                                        getHorizontalSize(
                                                                            15))),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            11),
                                                                    child: Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 2, bottom: 193),
                                                                              child: Text("lbl_view_on_map".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold12.copyWith(decoration: TextDecoration.underline))),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgLocation,
                                                                              height: getVerticalSize(16),
                                                                              width: getHorizontalSize(18),
                                                                              margin: getMargin(bottom: 194)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgUser,
                                                                              height: getVerticalSize(6),
                                                                              width: getHorizontalSize(40),
                                                                              margin: getMargin(left: 33, top: 205))
                                                                        ])))
                                                          ]))),
                                              Container(
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 5,
                                                      right: 7,
                                                      bottom: 5),
                                                  decoration: AppDecoration
                                                      .outlineBlack9003f
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .customBorderBL15),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Text(
                                                                "msg_vgec_boys_hostel"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanRegular12)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10),
                                                            child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              4),
                                                                      child: Text(
                                                                          "lbl_98"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtUrbanistRomanRegular20)),
                                                                  CustomImageView(
                                                                      svgPath: ImageConstant
                                                                          .imgIconsaxbulkdirectupGray50001,
                                                                      height:
                                                                          getSize(
                                                                              24),
                                                                      width:
                                                                          getSize(
                                                                              24),
                                                                      margin: getMargin(
                                                                          left:
                                                                              6,
                                                                          bottom:
                                                                              5)),
                                                                  CustomImageView(
                                                                      svgPath: ImageConstant
                                                                          .imgIconsaxbulkdirectupGray5000124x24,
                                                                      height:
                                                                          getSize(
                                                                              24),
                                                                      width:
                                                                          getSize(
                                                                              24),
                                                                      margin: getMargin(
                                                                          left:
                                                                              6,
                                                                          bottom:
                                                                              5)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              6,
                                                                          bottom:
                                                                              4),
                                                                      child: Text(
                                                                          "lbl_4"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtUrbanistRomanRegular20)),
                                                                  Spacer(),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              16),
                                                                      child: Text(
                                                                          "msg_yesterday_5_59_pm"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtUrbanistRomanRegular10))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 4),
                                                            child: Text(
                                                                "msg_completed_09_24"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanBold14))
                                                      ]))
                                            ]))
                                  ])),
                          Container(
                              margin: getMargin(left: 2, top: 14),
                              padding: getPadding(
                                  left: 40, top: 7, right: 40, bottom: 7),
                              decoration: AppDecoration.outlineBlack9000a,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapColumnhome();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(top: 2, bottom: 2),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgHomeGray700,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text("lbl_home".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistRomanRegular10Gray700))
                                                ]))),
                                    Spacer(flex: 36),
                                    Padding(
                                        padding: getPadding(top: 2, bottom: 2),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPlusmath,
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  alignment: Alignment.center),
                                              Padding(
                                                  padding: getPadding(top: 4),
                                                  child: Text("lbl_post".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanRegular10Gray700))
                                            ])),
                                    Spacer(flex: 32),
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgTimemachine,
                                                  height: getSize(20),
                                                  width: getSize(20)),
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: Text("lbl_history".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold12Black900))
                                            ])),
                                    Spacer(flex: 31),
                                    Padding(
                                        padding: getPadding(
                                            top: 2, right: 3, bottom: 2),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMenu,
                                                  height: getSize(20),
                                                  width: getSize(20)),
                                              Padding(
                                                  padding: getPadding(top: 4),
                                                  child: Text("lbl_more".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanRegular10Gray700))
                                            ]))
                                  ]))
                        ])))));
  }

  onTapColumnhome() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
