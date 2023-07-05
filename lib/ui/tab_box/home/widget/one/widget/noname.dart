import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishbor/utils/constans.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class NoNameWidget extends StatefulWidget {
  const NoNameWidget({Key? key}) : super(key: key);

  @override
  State<NoNameWidget> createState() => _NoNameWidgetState();
}

class _NoNameWidgetState extends State<NoNameWidget> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 0.r, top: 20.r),
            child: Text(
              "ISH UCHUN\nVAKANSIYALAR",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 26.sp,
                color: const Color(0xff152272),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          for(int i = 0;i<10;i++)
            Padding(
              padding: EdgeInsets.only(left: 0.r,top: 16.r),
              child: Container(
                width: 300.w,
                height: 120.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(36.r),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff121212).withOpacity(0.6),
                        blurRadius: 10.0.r,
                        spreadRadius: -7.0,
                        offset: const Offset(
                          0.0,
                          6.0,
                        ),
                      )
                    ]),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 40.w),
                        SizedBox(height: 40.w),
                        Text(
                          "IT mutaxassislar kerak",
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 40.w),
                        ZoomTapAnimation(child:
                        const Icon(
                          Icons.bookmark_border,
                          color: Colors.blue,
                        ),
                          onTap: (){

                          },)
                      ],
                    ),
                    Divider(
                      color: const Color(0xff979494),
                      thickness: 1.r,
                    ),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w500),
                    ),
                    ZoomTapAnimation(child: Padding(
                      padding: EdgeInsets.only(
                          top: 10.r,
                          left: 220.r
                      ),
                      child: Text('Batafsil',style: TextStyle(color: Colors.blue,fontSize: 12.sp,fontWeight: FontWeight.w700),),
                    ),onTap: (){
                      Navigator.pushNamed(context, detailByOne);
                    },)
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}

