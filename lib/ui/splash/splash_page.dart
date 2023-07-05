import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishbor/utils/app_colors.dart';
import 'package:ishbor/utils/app_image.dart';
import 'package:ishbor/utils/app_text_styles.dart';
import 'package:ishbor/utils/constans.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, onBoarding),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        child: Container(
          width: myWidth(context),
          height: myHeight(context),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0XFFE3BEE8),
              Color(0XFFE3BEE8),
              Color(0XFFFFFFFF),
              Color(0XFFFFFFFF),
              Color(0XFFCED7ED),
              Color(0XFFCED7ED),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.appLogo,
                width: myWidth(context) * 350 / 375,
                height: myHeight(context) * 350 / 812,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
