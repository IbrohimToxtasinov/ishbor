import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

BottomNavigationBarItem bottomNavigationBarItemWidget({required String icon}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset("assets/svg/$icon.svg", width: 24.w, height: 24.h),
    activeIcon: SvgPicture.asset("assets/svg/select_$icon.svg",
        width: 24.w, height: 24.h),
    label: "${icon[0].toUpperCase()}${icon.substring(1)}",
  );
}
