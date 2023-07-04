import 'package:flutter/material.dart';
import 'package:ishbor/ui/auth/login/login_screen.dart';
import 'package:ishbor/ui/auth/sign_up/sign_up_screen.dart';
import 'package:ishbor/utils/app_image.dart';

import '../ui/tab_box/home/home_screen.dart';

class MyUtils {
  static const List<Tab> tabs = [
    Tab(
      child: Text('Kirish',
      style: TextStyle(
        color: Colors.purpleAccent
      ),),
    ),
    Tab(text: "Ro'yxatdan o'tish"),
  ];
  static  List<Widget> views = [
    const LoginScreen(),
    const SignUpScreen()
  ];

  static String getPhoneNumber(String number) {
    return number.replaceAll(RegExp(r"\s|-|[()]+"), "");
  }

}
