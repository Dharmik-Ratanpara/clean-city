import 'controller/home_container_controller.dart';
import 'models/home_container_model.dart';
import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class HomeContainerPage extends StatelessWidget {
  HomeContainerController controller =
      Get.put(HomeContainerController(HomeContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: AppDecoration.fillWhiteA700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: getPadding(
                    left: 16,
                    top: 0,
                    right: 16,
                    bottom: 13,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.searchController,
                        hintText: "lbl_search".tr,
                        margin: getMargin(
                          top: 21,
                        ),
                        variant: TextFormFieldVariant.OutlineGray900,
                        shape: TextFormFieldShape.CircleBorder24,
                        padding: TextFormFieldPadding.PaddingT15,
                        fontStyle:
                            TextFormFieldFontStyle.UrbanistRegular14Gray900,
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                          padding: getPadding(
                            all: 6,
                          ),
                          margin: getMargin(
                            left: 30,
                            top: 8,
                            right: 8,
                            bottom: 8,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.yellow400,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                16,
                              ),
                            ),
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgSearch,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            48,
                          ),
                        ),
                      ),
                      Obx(
                        () {
                          return controller.isLoading.value
                              ? Center(
                                  child: CircularProgressIndicator(),
                                )
                              : Container(
                                  height: 673,
                                  child: RefreshIndicator(
                                    onRefresh: controller.getPosts,
                                    child: ListView.builder(
                                      itemCount: controller.posts.length,
                                      itemBuilder: (ctx, index) {
                                        return controller.posts.length == 0
                                            ? Center(
                                                child: Text('No new posts yet.'),
                                              )
                                            : Column(
                                                children: [
                                                  Card(
                                                    clipBehavior: Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: getMargin(
                                                      top: 35,
                                                    ),
                                                    color:
                                                        ColorConstant.blueGray100,
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        color: ColorConstant
                                                            .black900,
                                                        width: getHorizontalSize(
                                                          1,
                                                        ),
                                                      ),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL15,
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height: getVerticalSize(
                                                            226,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            310,
                                                          ),
                                                          decoration:
                                                              AppDecoration
                                                                  .outlineBlack900
                                                                  .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL15,
                                                          ),
                                                          child: Stack(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            children: [
                                                              CustomImageView(
                                                                url: controller.posts.elementAt(index)['imageUrl'],
                                                                height:
                                                                    getVerticalSize(
                                                                  226,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  310,
                                                                ),
                                                                radius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                    getHorizontalSize(
                                                                      15,
                                                                    ),
                                                                  ),
                                                                  topRight: Radius
                                                                      .circular(
                                                                    getHorizontalSize(
                                                                      15,
                                                                    ),
                                                                  ),
                                                                ),
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                              ),
                                                              Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                    left: 11,
                                                                  ),
                                                                  child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                            getPadding(
                                                                          top: 2,
                                                                          bottom:
                                                                              193,
                                                                        ),
                                                                        child:
                                                                            Text(
                                                                          "lbl_view_on_map"
                                                                              .tr,
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                          style: AppStyle
                                                                              .txtUrbanistRomanBold12
                                                                              .copyWith(
                                                                            decoration:
                                                                                TextDecoration.underline,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgLocation,
                                                                        height:
                                                                            getVerticalSize(
                                                                          16,
                                                                        ),
                                                                        width:
                                                                            getHorizontalSize(
                                                                          18,
                                                                        ),
                                                                        margin:
                                                                            getMargin(
                                                                          bottom:
                                                                              194,
                                                                        ),
                                                                      ),
                                                                      CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgUser,
                                                                        height:
                                                                            getVerticalSize(
                                                                          6,
                                                                        ),
                                                                        width:
                                                                            getHorizontalSize(
                                                                          40,
                                                                        ),
                                                                        margin:
                                                                            getMargin(
                                                                          left:
                                                                              33,
                                                                          top:
                                                                              205,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: getMargin(
                                                      left: 9,
                                                      right: 9,
                                                    ),
                                                    padding: getPadding(
                                                      left: 7,
                                                      top: 3,
                                                      right: 7,
                                                      bottom: 3,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.black,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(15),
                                                        bottomRight:
                                                            Radius.circular(15),
                                                      ),
                                                      image: DecorationImage(
                                                        image: fs.Svg(
                                                          ImageConstant
                                                              .imgGroup81,
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
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
                                                            top: 7,
                                                          ),
                                                          child: Text(
                                                            "${controller.posts.elementAt(index)['area']}, ${controller.posts.elementAt(index)['pincode']}",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanRegular12,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 9,
                                                          ),
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    getPadding(
                                                                  bottom: 4,
                                                                ),
                                                                child: Text(
                                                                  controller.posts.elementAt(index)['upvote'],
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtUrbanistRomanRegular20,
                                                                ),
                                                              ),
                                                              CustomImageView(
                                                                svgPath: ImageConstant
                                                                    .imgIconsaxbulkdirectup,
                                                                height: getSize(
                                                                  24,
                                                                ),
                                                                width: getSize(
                                                                  24,
                                                                ),
                                                                margin: getMargin(
                                                                  left: 6,
                                                                  bottom: 5,
                                                                ),
                                                              ),
                                                              CustomImageView(
                                                                svgPath: ImageConstant
                                                                    .imgIconsaxbulkdirectupBlack900,
                                                                height: getSize(
                                                                  24,
                                                                ),
                                                                width: getSize(
                                                                  24,
                                                                ),
                                                                margin: getMargin(
                                                                  left: 6,
                                                                  bottom: 5,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    getPadding(
                                                                  left: 6,
                                                                  bottom: 4,
                                                                ),
                                                                child: Text(
                                                                  controller.posts.elementAt(index)['downvote'],
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtUrbanistRomanRegular20,
                                                                ),
                                                              ),
                                                              Spacer(),
                                                              Padding(
                                                                padding:
                                                                    getPadding(
                                                                  top: 16,
                                                                ),
                                                                child: Text(
                                                                  DateTime.now().difference(DateTime.fromMillisecondsSinceEpoch(int.parse(controller.posts.elementAt(index)['datetime']))).toString(),
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtUrbanistRomanRegular10,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              );
                                      },
                                    ),
                                  ),
                                );
                        },
                      ),

                      // Column(
                      //   children: [
                      //     Card(
                      //       clipBehavior: Clip.antiAlias,
                      //       elevation: 0,
                      //       margin: getMargin(
                      //         top: 35,
                      //       ),
                      //       color: ColorConstant.blueGray100,
                      //       shape: RoundedRectangleBorder(
                      //         side: BorderSide(
                      //           color: ColorConstant.black900,
                      //           width: getHorizontalSize(
                      //             1,
                      //           ),
                      //         ),
                      //         borderRadius: BorderRadiusStyle.customBorderTL15,
                      //       ),
                      //       child: Column(
                      //         children: [
                      //           Container(
                      //             height: getVerticalSize(
                      //               226,
                      //             ),
                      //             width: getHorizontalSize(
                      //               310,
                      //             ),
                      //             decoration:
                      //                 AppDecoration.outlineBlack900.copyWith(
                      //               borderRadius:
                      //                   BorderRadiusStyle.customBorderTL15,
                      //             ),
                      //             child: Stack(
                      //               alignment: Alignment.centerLeft,
                      //               children: [
                      //                 CustomImageView(
                      //                   imagePath:
                      //                       ImageConstant.imgBiometrictechn,
                      //                   height: getVerticalSize(
                      //                     226,
                      //                   ),
                      //                   width: getHorizontalSize(
                      //                     310,
                      //                   ),
                      //                   radius: BorderRadius.only(
                      //                     topLeft: Radius.circular(
                      //                       getHorizontalSize(
                      //                         15,
                      //                       ),
                      //                     ),
                      //                     topRight: Radius.circular(
                      //                       getHorizontalSize(
                      //                         15,
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   alignment: Alignment.center,
                      //                 ),
                      //                 Align(
                      //                   alignment: Alignment.centerLeft,
                      //                   child: Padding(
                      //                     padding: getPadding(
                      //                       left: 11,
                      //                     ),
                      //                     child: Row(
                      //                       crossAxisAlignment:
                      //                           CrossAxisAlignment.start,
                      //                       children: [
                      //                         Padding(
                      //                           padding: getPadding(
                      //                             top: 2,
                      //                             bottom: 193,
                      //                           ),
                      //                           child: Text(
                      //                             "lbl_view_on_map".tr,
                      //                             overflow:
                      //                                 TextOverflow.ellipsis,
                      //                             textAlign: TextAlign.left,
                      //                             style: AppStyle
                      //                                 .txtUrbanistRomanBold12
                      //                                 .copyWith(
                      //                               decoration: TextDecoration
                      //                                   .underline,
                      //                             ),
                      //                           ),
                      //                         ),
                      //                         CustomImageView(
                      //                           imagePath:
                      //                               ImageConstant.imgLocation,
                      //                           height: getVerticalSize(
                      //                             16,
                      //                           ),
                      //                           width: getHorizontalSize(
                      //                             18,
                      //                           ),
                      //                           margin: getMargin(
                      //                             bottom: 194,
                      //                           ),
                      //                         ),
                      //                         CustomImageView(
                      //                           svgPath: ImageConstant.imgUser,
                      //                           height: getVerticalSize(
                      //                             6,
                      //                           ),
                      //                           width: getHorizontalSize(
                      //                             40,
                      //                           ),
                      //                           margin: getMargin(
                      //                             left: 33,
                      //                             top: 205,
                      //                           ),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //     Container(
                      //       margin: getMargin(
                      //         left: 9,
                      //         right: 9,
                      //       ),
                      //       padding: getPadding(
                      //         left: 7,
                      //         top: 3,
                      //         right: 7,
                      //         bottom: 3,
                      //       ),
                      //       decoration: BoxDecoration(
                      //         border: Border.all(
                      //           color: Colors.black,
                      //           width: 1,
                      //         ),
                      //         borderRadius: BorderRadius.only(
                      //           bottomLeft: Radius.circular(15),
                      //           bottomRight: Radius.circular(15),
                      //         ),
                      //         image: DecorationImage(
                      //           image: fs.Svg(
                      //             ImageConstant.imgGroup81,
                      //           ),
                      //           fit: BoxFit.cover,
                      //         ),
                      //       ),
                      //       child: Column(
                      //         mainAxisSize: MainAxisSize.min,
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         mainAxisAlignment: MainAxisAlignment.end,
                      //         children: [
                      //           Padding(
                      //             padding: getPadding(
                      //               top: 7,
                      //             ),
                      //             child: Text(
                      //               "msg_vgec_boys_hostel".tr,
                      //               overflow: TextOverflow.ellipsis,
                      //               textAlign: TextAlign.left,
                      //               style: AppStyle.txtUrbanistRomanRegular12,
                      //             ),
                      //           ),
                      //           Padding(
                      //             padding: getPadding(
                      //               top: 9,
                      //             ),
                      //             child: Row(
                      //               crossAxisAlignment:
                      //                   CrossAxisAlignment.start,
                      //               children: [
                      //                 Padding(
                      //                   padding: getPadding(
                      //                     bottom: 4,
                      //                   ),
                      //                   child: Text(
                      //                     "lbl_99".tr,
                      //                     overflow: TextOverflow.ellipsis,
                      //                     textAlign: TextAlign.left,
                      //                     style: AppStyle
                      //                         .txtUrbanistRomanRegular20,
                      //                   ),
                      //                 ),
                      //                 CustomImageView(
                      //                   svgPath: ImageConstant
                      //                       .imgIconsaxbulkdirectup,
                      //                   height: getSize(
                      //                     24,
                      //                   ),
                      //                   width: getSize(
                      //                     24,
                      //                   ),
                      //                   margin: getMargin(
                      //                     left: 6,
                      //                     bottom: 5,
                      //                   ),
                      //                 ),
                      //                 CustomImageView(
                      //                   svgPath: ImageConstant
                      //                       .imgIconsaxbulkdirectupBlack900,
                      //                   height: getSize(
                      //                     24,
                      //                   ),
                      //                   width: getSize(
                      //                     24,
                      //                   ),
                      //                   margin: getMargin(
                      //                     left: 6,
                      //                     bottom: 5,
                      //                   ),
                      //                 ),
                      //                 Padding(
                      //                   padding: getPadding(
                      //                     left: 6,
                      //                     bottom: 4,
                      //                   ),
                      //                   child: Text(
                      //                     "lbl_3".tr,
                      //                     overflow: TextOverflow.ellipsis,
                      //                     textAlign: TextAlign.left,
                      //                     style: AppStyle
                      //                         .txtUrbanistRomanRegular20,
                      //                   ),
                      //                 ),
                      //                 Spacer(),
                      //                 Padding(
                      //                   padding: getPadding(
                      //                     top: 16,
                      //                   ),
                      //                   child: Text(
                      //                     "msg_yesterday_5_59_pm".tr,
                      //                     overflow: TextOverflow.ellipsis,
                      //                     textAlign: TextAlign.left,
                      //                     style: AppStyle
                      //                         .txtUrbanistRomanRegular10,
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),

                      // Column(
                      //   children: [
                      //     Card(
                      //       clipBehavior: Clip.antiAlias,
                      //       elevation: 0,
                      //       margin: getMargin(
                      //         top: 26,
                      //       ),
                      //       color: ColorConstant.blueGray100,
                      //       shape: RoundedRectangleBorder(
                      //         side: BorderSide(
                      //           color: ColorConstant.black900,
                      //           width: getHorizontalSize(
                      //             1,
                      //           ),
                      //         ),
                      //         borderRadius: BorderRadiusStyle.customBorderTL15,
                      //       ),
                      //       child: Container(
                      //         height: getVerticalSize(
                      //           226,
                      //         ),
                      //         width: getHorizontalSize(
                      //           310,
                      //         ),
                      //         decoration: AppDecoration.outlineBlack900.copyWith(
                      //           borderRadius: BorderRadiusStyle.customBorderTL15,
                      //         ),
                      //         child: Stack(
                      //           alignment: Alignment.centerLeft,
                      //           children: [
                      //             CustomImageView(
                      //               imagePath: ImageConstant.imgBiometrictechn,
                      //               height: getVerticalSize(
                      //                 226,
                      //               ),
                      //               width: getHorizontalSize(
                      //                 310,
                      //               ),
                      //               radius: BorderRadius.only(
                      //                 topLeft: Radius.circular(
                      //                   getHorizontalSize(
                      //                     15,
                      //                   ),
                      //                 ),
                      //                 topRight: Radius.circular(
                      //                   getHorizontalSize(
                      //                     15,
                      //                   ),
                      //                 ),
                      //               ),
                      //               alignment: Alignment.center,
                      //             ),
                      //             Align(
                      //               alignment: Alignment.centerLeft,
                      //               child: Padding(
                      //                 padding: getPadding(
                      //                   left: 11,
                      //                 ),
                      //                 child: Row(
                      //                   crossAxisAlignment:
                      //                       CrossAxisAlignment.start,
                      //                   children: [
                      //                     Padding(
                      //                       padding: getPadding(
                      //                         top: 2,
                      //                         bottom: 193,
                      //                       ),
                      //                       child: Text(
                      //                         "lbl_view_on_map".tr,
                      //                         overflow: TextOverflow.ellipsis,
                      //                         textAlign: TextAlign.left,
                      //                         style: AppStyle
                      //                             .txtUrbanistRomanBold12
                      //                             .copyWith(
                      //                           decoration:
                      //                               TextDecoration.underline,
                      //                         ),
                      //                       ),
                      //                     ),
                      //                     CustomImageView(
                      //                       imagePath: ImageConstant.imgLocation,
                      //                       height: getVerticalSize(
                      //                         16,
                      //                       ),
                      //                       width: getHorizontalSize(
                      //                         18,
                      //                       ),
                      //                       margin: getMargin(
                      //                         bottom: 194,
                      //                       ),
                      //                     ),
                      //                     CustomImageView(
                      //                       svgPath: ImageConstant.imgUser,
                      //                       height: getVerticalSize(
                      //                         6,
                      //                       ),
                      //                       width: getHorizontalSize(
                      //                         40,
                      //                       ),
                      //                       margin: getMargin(
                      //                         left: 33,
                      //                         top: 205,
                      //                       ),
                      //                     ),
                      //                   ],
                      //                 ),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //     Container(
                      //       margin: getMargin(
                      //         left: 8,
                      //         right: 9,
                      //       ),
                      //       padding: getPadding(
                      //         left: 7,
                      //         top: 3,
                      //         right: 7,
                      //         bottom: 3,
                      //       ),
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadiusStyle.customBorderBL15,
                      //         image: DecorationImage(
                      //           image: fs.Svg(
                      //             ImageConstant.imgGroup81,
                      //           ),
                      //           fit: BoxFit.cover,
                      //         ),
                      //       ),
                      //       child: Column(
                      //         mainAxisSize: MainAxisSize.min,
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         mainAxisAlignment: MainAxisAlignment.end,
                      //         children: [
                      //           Padding(
                      //             padding: getPadding(
                      //               top: 7,
                      //             ),
                      //             child: Text(
                      //               "msg_vgec_boys_hostel".tr,
                      //               overflow: TextOverflow.ellipsis,
                      //               textAlign: TextAlign.left,
                      //               style: AppStyle.txtUrbanistRomanRegular12,
                      //             ),
                      //           ),
                      //           Padding(
                      //             padding: getPadding(
                      //               top: 10,
                      //             ),
                      //             child: Row(
                      //               crossAxisAlignment: CrossAxisAlignment.start,
                      //               children: [
                      //                 Padding(
                      //                   padding: getPadding(
                      //                     bottom: 4,
                      //                   ),
                      //                   child: Text(
                      //                     "lbl_98".tr,
                      //                     overflow: TextOverflow.ellipsis,
                      //                     textAlign: TextAlign.left,
                      //                     style:
                      //                         AppStyle.txtUrbanistRomanRegular20,
                      //                   ),
                      //                 ),
                      //                 CustomImageView(
                      //                   svgPath: ImageConstant
                      //                       .imgIconsaxbulkdirectupBlack90024x24,
                      //                   height: getSize(
                      //                     24,
                      //                   ),
                      //                   width: getSize(
                      //                     24,
                      //                   ),
                      //                   margin: getMargin(
                      //                     left: 6,
                      //                     bottom: 5,
                      //                   ),
                      //                 ),
                      //                 CustomImageView(
                      //                   svgPath: ImageConstant
                      //                       .imgIconsaxbulkdirectupRed800,
                      //                   height: getSize(
                      //                     24,
                      //                   ),
                      //                   width: getSize(
                      //                     24,
                      //                   ),
                      //                   margin: getMargin(
                      //                     left: 6,
                      //                     bottom: 5,
                      //                   ),
                      //                 ),
                      //                 Padding(
                      //                   padding: getPadding(
                      //                     left: 6,
                      //                     bottom: 4,
                      //                   ),
                      //                   child: Text(
                      //                     "lbl_4".tr,
                      //                     overflow: TextOverflow.ellipsis,
                      //                     textAlign: TextAlign.left,
                      //                     style:
                      //                         AppStyle.txtUrbanistRomanRegular20,
                      //                   ),
                      //                 ),
                      //                 Spacer(),
                      //                 Padding(
                      //                   padding: getPadding(
                      //                     top: 16,
                      //                   ),
                      //                   child: Text(
                      //                     "msg_yesterday_5_59_pm".tr,
                      //                     overflow: TextOverflow.ellipsis,
                      //                     textAlign: TextAlign.left,
                      //                     style:
                      //                         AppStyle.txtUrbanistRomanRegular10,
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
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
