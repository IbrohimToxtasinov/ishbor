import 'package:flutter/material.dart';
import 'package:ishbor/ui/auth/login/login_screen.dart';
import 'package:ishbor/ui/auth/sign_up/sign_up_screen.dart';
import 'package:ishbor/ui/no_internet/no_internet_screen.dart';
import 'package:ishbor/ui/onboarding/onboarding_screen.dart';
import 'package:ishbor/ui/tab_box/home/widget/one/one_page.dart';
import 'package:ishbor/ui/tab_box/home/widget/one/widget/detail_paeg.dart';
import 'package:ishbor/utils/constans.dart';
import 'splash/splash_page.dart';
import 'tab_box/tab_box.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onBoarding:
        return navigateTo(OnBoardingScreen());
      case splashPage:
        return navigateTo(SplashScreen());
      case login:
        return navigateTo(LoginScreen());
      case signUp:
        return navigateTo(SignUpScreen());
      case onePage:
        return navigateTo(OneScreen());
      case detailByOne:
        return navigateTo(DetailScreenByOne());
      case tabBox:
        return navigateTo(TabBox());
      case noInternetRoute:
        return navigateTo(
          NoInternetScreen(
            voidCallback: settings.arguments as VoidCallback,
          ),
        );
      default:
        return navigateTo(
          Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

MaterialPageRoute navigateTo(Widget widget) =>
    MaterialPageRoute(builder: (context) => widget);
