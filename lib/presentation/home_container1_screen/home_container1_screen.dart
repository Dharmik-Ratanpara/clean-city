import 'controller/home_container1_controller.dart';
import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/history_user_page/history_user_page.dart';
import 'package:clean_city/presentation/home_container_page/home_container_page.dart';
import 'package:clean_city/presentation/profile_page/profile_page.dart';
import 'package:clean_city/presentation/upload_page/upload_page.dart';
import 'package:clean_city/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeContainer1Screen extends GetWidget<HomeContainer1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Navigator(
            key: Get.nestedKey(1),
            initialRoute: AppRoutes.homeContainerPage,
            onGenerateRoute: (routeSetting) => GetPageRoute(
                page: () => getCurrentPage(routeSetting.name!),
                transition: Transition.noTransition)),
        bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        }),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeContainerPage;
      case BottomBarEnum.Post:
        return AppRoutes.uploadPage;
      case BottomBarEnum.History:
        return AppRoutes.historyUserPage;
      case BottomBarEnum.More:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeContainerPage:
        return HomeContainerPage();
      case AppRoutes.uploadPage:
        return UploadPage();
      case AppRoutes.historyUserPage:
        return HistoryUserPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
