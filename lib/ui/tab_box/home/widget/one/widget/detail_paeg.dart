import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishbor/utils/constans.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class DetailScreenByOne extends StatefulWidget {
  const DetailScreenByOne({Key? key}) : super(key: key);

  @override
  State<DetailScreenByOne> createState() => _DetailScreenByOneState();
}
bool isOn = false;
class _DetailScreenByOneState extends State<DetailScreenByOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD1D8EB),
      appBar: AppBar(
        backgroundColor: const Color(0xffD1D8EB),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 40.r, right: 30.r),
        child: Column(
          children: [
            const Expanded(child: SizedBox()),
            Container(
              width: 300.w,
              padding: EdgeInsets.all(22.r),
              height: myHeight(context) * 600 / 812,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36.r),
                  topRight: Radius.circular(36.r),
                  bottomLeft: Radius.circular(16.r),
                  bottomRight: Radius.circular(16.r),
                ),
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
                ],
              ),
              child: Column(
                children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Text"),
                      ZoomTapAnimation(
                        child: isOn==true?const Icon(
                          Icons.bookmark,
                          color: Colors.blue,
                        ):const Icon(
                        Icons.bookmark_border,
                        color: Colors.blue,
                      ),onTap: (){
                        setState(() {
                          isOn=!isOn;
                        });
                      },)
                    ],
                  ),
                  Divider(
                    color: const Color(0xff979494),
                    thickness: 1.r,
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    "Flutter dasturchi",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    """Majburiy talablar:                                                      
- Frontend dasturlashda 2 yildan ortiq tajriba;
    - HTML5, CSS3 (SCSS, Bootstrap, Grid, Flexbox,            Adaptive/Responsive design Crossbrowser) yaxshi bilish;                                                           
- JavaScript dasturlash tilini yaxshi bilish;       
- WebGL’ni (Three.js) yaxshi bilish;                     
- Vue JS’ni yaxshi bilish;                                         
    - vazifalarni yetarli darajada baholash va ularni o‘z vaqtida bajarish.                                          

                                                """,
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
                  ),
                  Text("""Bizda ishlash orqali nima olishingiz mumkin?    
- mamlakatning eng yirik tashkilotida ishlash      imkoniyati;                                                               
- keng ko‘lamli IT loyihalar;                                 
- mo‘may maosh;                                                   
- eng yaxshi hamkasblar;                                     
- rivojlanishingiz uchun ko‘mak;                        
         
                                                """),
                  ZoomTapAnimation(
                      child: Text(
                    "Xabar Yuborish",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
