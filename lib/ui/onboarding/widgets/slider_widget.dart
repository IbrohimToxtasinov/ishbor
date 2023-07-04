import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishbor/utils/app_colors.dart';
import 'package:ishbor/utils/constans.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({Key? key, required this.title, required this.image})
      : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
            width: myWidth(context),
            height: myHeight(context) * 0.5,
            child: Image.asset(image, width: 238.w, height: 238.h)),
        SizedBox(height: 37.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w).w,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 27.sp,
              fontWeight: FontWeight.w700,
              color: MyColors.black,
            ),
          ),
        ),
        SizedBox(height: 37.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w).w,
          child: Text(
            "BIZ BILAN BIRGA OZ ISHINGIZNI VA ISHCHINGIZNI TOPING!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: MyColors.black,
            ),
          ),
        ),
      ],
    );
  }
}
