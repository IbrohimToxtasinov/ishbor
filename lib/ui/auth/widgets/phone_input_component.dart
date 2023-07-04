import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishbor/utils/app_colors.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneInputComponent extends StatefulWidget {
  const PhoneInputComponent({
    Key? key,
    this.validator,
    required this.onChanged,
    required this.initialValue,
    this.textInputAction = TextInputAction.next,
  }) : super(key: key);

  final ValueChanged<String> onChanged;
  final FormFieldValidator<String?>? validator;
  final String initialValue;
  final TextInputAction textInputAction;

  @override
  State<PhoneInputComponent> createState() => _PhoneInputComponentState();
}

class _PhoneInputComponentState extends State<PhoneInputComponent> {
  late MaskTextInputFormatter phoneMaskFormatter;
  final FocusNode phoneFocusNode = FocusNode();
  final TextEditingController controller = TextEditingController();
  String shadowText = "Phone";

  String updateShadowText(String currentText) {
    shadowText = "Phone";
    shadowText = shadowText.substring(currentText.length, shadowText.length);
    return currentText + shadowText;
  }

  @override
  void initState() {
    phoneMaskFormatter = MaskTextInputFormatter(
      mask: '+998 ## ###-##-##',
      filter: {
        "#": RegExp(r'[0-9]'),
      },
    );
    controller.text = phoneMaskFormatter.maskText(widget.initialValue);
    updateShadowText(widget.initialValue);
    super.initState();
  }

  @override
  void dispose() {
    phoneFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: MyColors.black,
      controller: controller,
      inputFormatters: [phoneMaskFormatter],
      textInputAction: widget.textInputAction,
      keyboardType:
          const TextInputType.numberWithOptions(signed: false, decimal: true),
      focusNode: phoneFocusNode,
      onChanged: (String value) {
        setState(() {
          if (value.length == 12) {
            phoneFocusNode.unfocus();
          }
          widget.onChanged.call(value);
        });
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      style: GoogleFonts.openSans(
        color: MyColors.greyscale500,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20.w, right: 20.w).w,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: "Telefon raqam",
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
          borderRadius: BorderRadius.all(Radius.circular(50.r)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: MyColors.greyscale200, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(50.r)),
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
