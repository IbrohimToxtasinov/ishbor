import 'package:flutter/material.dart';
import 'package:ishbor/ui/auth/login/login_screen.dart';
import 'package:ishbor/ui/auth/sign_up/sign_up_screen.dart';
import 'package:ishbor/utils/app_image.dart';


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

class FakeData {
  String name;
  String image;
  Color color;

  FakeData({
    required this.color,
    required this.name,
    required this.image,
  });

  static  List<FakeData> data = [
    FakeData(color: const Color(0xffEADAF1), name: 'ISH SERVISLARI', image: AppImages.onBoarding1),
    FakeData(color: const Color(0xffC1CDE8), name: 'IMKONIYATI CHEKLANGANLAR', image: AppImages.onBoarding2),
    FakeData(color: const Color(0xffC1CDE8), name: 'AI YORDAMCHI', image: AppImages.onBoarding4),
    FakeData(color: const Color(0xffEADAF1), name: 'HAMKORLAR', image: AppImages.hamkor),
  ];
}
