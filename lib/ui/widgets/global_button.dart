import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/constans.dart';

class GlobalButton extends StatelessWidget {
  final String title;
  final Color colorText;
  final Color colorButton;
  final VoidCallback onTap;
  final bool isActive;

  const GlobalButton({
    Key? key,
     required this.title,
    required this.onTap,
    required this.colorText,
    required this.colorButton,
    required this.isActive,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: isActive ? onTap : null,
      child: Container(
        height: myHeight(context) * 57 / 812,
        decoration: BoxDecoration(
          color: colorButton.toString().isEmpty?null:colorButton,
          borderRadius: BorderRadius.circular(50).r,
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
          ]
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.aBeeZee(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: colorText
            )
          ),
        ),
      ),
    );
  }
}
