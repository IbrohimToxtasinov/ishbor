import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

BottomNavigationBarItem bottomNavigationBarItemWidget({required String icon,required bool isSvg}) {
  return BottomNavigationBarItem(
    icon: isSvg==true? SvgPicture.asset("assets/svg/$icon.svg", width: 34.w, height: 34.h):Image.asset('assets/images/$icon.png',scale: 3),
    label: '',
  );
}
