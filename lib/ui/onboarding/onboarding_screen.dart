import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishbor/ui/onboarding/widgets/slider_widget.dart';
import 'package:ishbor/ui/widgets/global_button.dart';
import 'package:ishbor/utils/app_colors.dart';
import 'package:ishbor/utils/app_image.dart';
import 'package:ishbor/utils/constans.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  String button = "Next";
  final PageController _controller = PageController();

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const SliderWidget(
        title: "ISH SERVISLARI",
        image: AppImages.onBoarding1,
      ),
      const SliderWidget(
        title: "IMKONIYATI CHEKLANGANLAR",
        image: AppImages.onBoarding2,
      ),
      const SliderWidget(
        title: "VAKANSIYA",
        image: AppImages.onBoarding3,
      ),
      const SliderWidget(
        title: "AI YORDAMCHI",
        image: AppImages.onBoarding4,
      ),
      const SliderWidget(
        title: "CHAT",
        image: AppImages.onBoarding5,
      ),
    ];
    return Scaffold(
      backgroundColor: MyColors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0.h,
              left: 0.w,
              right: 0.w,
              child: Container(
                width: myWidth(context),
                height: myHeight(context) * 0.5,
                decoration: BoxDecoration(
                  color: isEven(_currentPage + 1)
                      ? const Color(0XFFD7BBE1)
                      : const Color(0xFFB6BEE5),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
              ),
            ),
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              itemCount: pages.length,
              physics: const BouncingScrollPhysics(),
              onPageChanged: _onChanged,
              itemBuilder: (context, int index) {
                return Container(child: pages[index]);
              },
            ),
            Positioned(
              bottom: 0.h,
              left: 0.w,
              right: 0.w,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(pages.length, (int index) {
                      return AnimatedContainer(
                        curve: Curves.linear,
                        duration: const Duration(milliseconds: 300),
                        height: index == _currentPage ? 15.h : 10.h,
                        width: index == _currentPage ? 15.w : 10.w,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (index == _currentPage)
                              ? isEven(_currentPage + 1)
                                  ? const Color(0XFFD7BBE1)
                                  : const Color(0xFFB6BEE5)
                              : const Color(0XFFD9D9D9),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 50.h),
                  ZoomTapAnimation(
                    onTap: () {
                      if (_currentPage == (pages.length - 1)) {
                        Navigator.pushReplacementNamed(context, tabBox);
                      } else {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.easeInOutQuint);
                      }
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 70,
                      alignment: Alignment.center,
                      width: (_currentPage == (pages.length - 1)) ? 200 : 70,
                      decoration: BoxDecoration(
                        color: isEven(_currentPage + 1)
                            ? const Color(0XFFD7BBE1)
                            : const Color(0xFFC1C4DF),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: (_currentPage == (pages.length - 1))
                          ? Text(
                              button = "Get Stardred",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            )
                          : const Icon(
                              Icons.navigate_next,
                              size: 50,
                              color: Colors.white,
                            ),
                    ),
                  ),
                  SizedBox(height: 23.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool isEven(int number) {
  return number % 2 == 0;
}
