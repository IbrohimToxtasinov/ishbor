import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishbor/ui/tab_box/home/widget/f.dart';
import 'package:ishbor/ui/tab_box/home/widget/th.dart';
import 'package:ishbor/ui/tab_box/home/widget/two/two.dart';
import 'package:ishbor/utils/app_image.dart';
import 'package:ishbor/utils/constans.dart';
import 'package:ishbor/utils/my_utils.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppImages.im),
              Padding(
                padding: EdgeInsets.only(left: 32.r, right: 32.r, top: 32.r),
                child: SizedBox(
                  width: double.infinity,
                  height: 330.h,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 180,
                      childAspectRatio: 0.6.h,
                      crossAxisSpacing: 114,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: 4,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext ctx, index) {
                      return Column(
                        children: [
                          ZoomTapAnimation(
                            child: Container(
                              width: 160,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: FakeData.data[index].color,
                                  borderRadius: BorderRadius.circular(30.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xff121212)
                                          .withOpacity(0.6),
                                      blurRadius: 10.0.r,
                                      spreadRadius: -7.0,
                                      offset: const Offset(
                                        0.0,
                                        6.0,
                                      ),
                                    )
                                  ]),
                              child: Center(
                                child: Image.asset(FakeData.data[index].image),
                              ),
                            ),
                            onTap: () {
                              if(index==0){
                                Navigator.pushNamed(context, onePage);
                              }
                              if(index==3){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>TwoScreen()));
                              }
                              if(index==1){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>ThScreen()));
                              }
                              if(index==2){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>FScreen()));
                              }
                            },
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            FakeData.data[index].name,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xffB3B2B4),
                            ),
                            textAlign:TextAlign.center,
                          )
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
