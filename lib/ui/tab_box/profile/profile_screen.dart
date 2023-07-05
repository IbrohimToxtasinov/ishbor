import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishbor/utils/app_colors.dart';
import 'package:ishbor/utils/constans.dart';
import 'package:ishbor/utils/my_utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: isAuth
            ? SafeArea(
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child:
                      Image.asset("assets/images/img_3.png", fit: BoxFit.cover),
                ),
              )
            : SizedBox(
                width: myWidth(context),
                height: myHeight(context),
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10.r),
                          width: myWidth(context),
                          height: myHeight(context) * 360 / 812,
                          decoration: BoxDecoration(
                            color: const Color(0xffC1C4DF),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30.r).r,
                              bottomLeft: Radius.circular(30.r).r,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff121212).withOpacity(0.4),
                                blurRadius: 10.r,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20.r, right: 20.r, top: 60.h),
                        child: Positioned(
                          bottom: 0,
                          child: Container(
                            height: myHeight(context) * 650 / 812,
                            width: myWidth(context),
                            padding: EdgeInsets.only(
                                    left: 12.w, top: 40.h, right: 12.w)
                                .w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(42.r),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xff121212).withOpacity(0.6),
                                  blurRadius: 10.0.r,
                                  spreadRadius: -6.0,
                                  offset: const Offset(
                                    0.0,
                                    6.0,
                                  ),
                                ),
                              ],
                              color: MyColors.white,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.0),
                                    border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey, width: 0.8.w),
                                    ),
                                  ),
                                  child: TabBar(
                                    tabs: MyUtils.tabs,
                                    indicatorWeight: 2.h,
                                    indicatorColor: Colors.purpleAccent,
                                    indicatorSize: TabBarIndicatorSize.tab,
                                    indicatorPadding: EdgeInsets.only(
                                        left: 0.r, right: 0.r, bottom: 0.r),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 1.5,
                                  child: TabBarView(children: MyUtils.views),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}

// SizedBox(
// width: myWidth(context),
// height: myHeight(context),
// child: SingleChildScrollView(
// child: Stack(
// children: [
// Positioned(
// top: 0,
// left: 0,
// right: 0,
// child: Container(
// padding: EdgeInsets.only(bottom: 10.r),
// width: myWidth(context),
// height: myHeight(context) * 360 / 812,
// decoration: BoxDecoration(
// color: const Color(0xffC1C4DF),
// borderRadius: BorderRadius.only(
// bottomRight: Radius.circular(30.r).r,
// bottomLeft: Radius.circular(30.r).r,
// ),
// boxShadow: [
// BoxShadow(
// color: const Color(0xff121212).withOpacity(0.4),
// blurRadius: 10.r,
// )
// ],
// ),
// ),
// ),
// Padding(
// padding: EdgeInsets.only(left: 20.r, right: 20.r, top: 60.h),
// child: Positioned(
// bottom: 0,
// child: Container(
// height: myHeight(context) * 627 / 812,
// width: myWidth(context),
// padding:
// EdgeInsets.only(left: 12.w, top: 40.h, right: 12.w).w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(42.r),
// boxShadow: [
// BoxShadow(
// color: const Color(0xff121212).withOpacity(0.6),
// blurRadius: 10.0.r,
// spreadRadius: -6.0,
// offset: const Offset(
// 0.0,
// 6.0,
// ),
// ),
// ],
// color: MyColors.white,
// ),
// child: Column(
// children: [
// Container(
// decoration: BoxDecoration(
// color: Colors.white.withOpacity(0.0),
// border: Border(
// bottom:
// BorderSide(color: Colors.grey, width: 0.8.w),
// ),
// ),
// child: TabBar(
// tabs: MyUtils.tabs,
// indicatorWeight: 2.h,
// indicatorColor: Colors.purpleAccent,
// indicatorSize: TabBarIndicatorSize.tab,
// indicatorPadding: EdgeInsets.only(
// left: 0.r, right: 0.r, bottom: 0.r),
// ),
// ),
// SizedBox(
// height: MediaQuery.of(context).size.height / 1.66,
// child: TabBarView(children: MyUtils.views),
// ),
// ],
// ),
// ),
// ),
// )
// ],
// ),
// ),
// ),
