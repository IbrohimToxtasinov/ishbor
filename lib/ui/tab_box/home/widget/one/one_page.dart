import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishbor/utils/my_utils.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class OneScreen extends StatefulWidget {
  const OneScreen({Key? key}) : super(key: key);

  @override
  State<OneScreen> createState() => _OneScreenState();
}

class _OneScreenState extends State<OneScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: TabBar(
              tabs: MyUtils.appBarTabs,
              indicatorWeight: 2.h,
              indicatorColor: Colors.black,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding:
              EdgeInsets.only(left: 16.r, right: 16.r, bottom: 6.r),
            ).preferredSize,
            child: Material(
              color: const Color(0xffD1D8EB), 
              borderRadius: BorderRadius.circular(4.r),
              child: TabBar(
                tabs: MyUtils.appBarTabs,
                indicatorWeight: 2.h,
                indicatorColor: const Color(0xffD1D8EB),
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding:
                EdgeInsets.only(left: 16.r, right: 16.r, bottom: 6.r),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: MyUtils.appBarViews,
        ),
      ),
    );
  }
}
