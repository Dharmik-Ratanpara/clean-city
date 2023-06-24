import 'package:clean_city/presentation/splash_screen/splash_screen.dart';
import 'package:clean_city/presentation/splash_screen/binding/splash_binding.dart';
import 'package:clean_city/presentation/login_screen/login_screen.dart';
import 'package:clean_city/presentation/login_screen/binding/login_binding.dart';
import 'package:clean_city/presentation/otp_screen/otp_screen.dart';
import 'package:clean_city/presentation/otp_screen/binding/otp_binding.dart';
import 'package:clean_city/presentation/home_container_screen/home_container_screen.dart';
import 'package:clean_city/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:clean_city/presentation/change_number_otp_screen/change_number_otp_screen.dart';
import 'package:clean_city/presentation/change_number_otp_screen/binding/change_number_otp_binding.dart';
import 'package:clean_city/presentation/change_number_screen/change_number_screen.dart';
import 'package:clean_city/presentation/change_number_screen/binding/change_number_binding.dart';
import 'package:clean_city/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:clean_city/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String otpScreen = '/otp_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String profilePage = '/profile_page';

  static const String uploadPage = '/upload_page';

  static const String historyUserPage = '/history_user_page';

  static const String changeNumberOtpScreen = '/change_number_otp_screen';

  static const String changeNumberScreen = '/change_number_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: changeNumberOtpScreen,
      page: () => ChangeNumberOtpScreen(),
      bindings: [
        ChangeNumberOtpBinding(),
      ],
    ),
    GetPage(
      name: changeNumberScreen,
      page: () => ChangeNumberScreen(),
      bindings: [
        ChangeNumberBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
