import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/app_colors.dart';

class AuthTexFormFiledWidget extends StatelessWidget {
  const AuthTexFormFiledWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
  }) : super(key: key);

  final TextEditingController controller;
  final FormFieldValidator<String?>? validator;
  final String hintText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.openSans(
        color: MyColors.greyscale500,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      controller: controller,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      cursorColor: MyColors.black,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: hintText,
        labelStyle: GoogleFonts.openSans(
          color: MyColors.c3B3B3B.withOpacity(0.3),
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
        ),
        errorStyle: GoogleFonts.openSans(
          color: MyColors.warning500,
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
        ),
        hintStyle: GoogleFonts.openSans(
          color: MyColors.c3B3B3B.withOpacity(0.3),
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
        ),
        fillColor: MyColors.white,
        filled: false,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: MyColors.greyscale100),
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: MyColors.greyscale200, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Color(0xffD7BBE1), width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(50.r)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.gradient1.first, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(50.r)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: MyColors.warning500, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(50.r)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: MyColors.warning500, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(50.r)),
        ),
      ),
    );
  }
}
