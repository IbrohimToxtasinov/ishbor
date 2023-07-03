import 'package:flutter/material.dart';
import 'package:ishbor/ui/auth/login/login_screen.dart';
import 'package:ishbor/ui/auth/sign_up/sign_up_screen.dart';
import 'package:ishbor/ui/no_internet/no_internet_screen.dart';

import '../utils/constans.dart';
import 'on_boarding/on_boarding_page.dart';
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
