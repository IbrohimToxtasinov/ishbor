import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishbor/ui/auth/widgets/phone_input_component.dart';
import 'package:ishbor/ui/widgets/global_button.dart';
import 'package:ishbor/utils/constans.dart';

import '../../../utils/my_utils.dart';
import '../widgets/auth_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

late TextEditingController passwordController;
late TextEditingController fullNameController;
late TextEditingController cityController;
late TextEditingController vController;
final formGlobalKey = GlobalKey<FormState>();
String phoneNumber = '';

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  void initState() {
    passwordController = TextEditingController();
    fullNameController = TextEditingController();
    cityController = TextEditingController();
    vController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formGlobalKey,
      child: Column(
        children: [
          SizedBox(height: 22.h),
          AuthTexFormFiledWidget(
            controller: fullNameController,
            textInputAction: TextInputAction.next,
            hintText: 'Ism / Familiya',
            validator: (fullName) {
              return fullName!.length >= 3 ? null : "Isim Xato";
            },
          ),
          SizedBox(height: 12.h),
          PhoneInputComponent(
            validator: (value) =>
            value!.length > 16 ? null : "Telefon raqamingizni kiriting",
            onChanged: (String value) {
              phoneNumber = MyUtils.getPhoneNumber(value);
            },
            initialValue: '',
          ),
          SizedBox(height: 12.h),
          AuthTexFormFiledWidget(
            controller: cityController,
            textInputAction: TextInputAction.next,
            hintText: 'Shahar',
            validator: (city) {
              return city!.length >= 3 ? null : "Shahar Xato";
            },
          ),
          SizedBox(height: 12.h),
          AuthTexFormFiledWidget(
            controller: passwordController,
            textInputAction: TextInputAction.next,
            hintText: 'Parol',
            validator: (password) {
              return password!.length >= 5 ? null : "Parolingizni kiriting";
            },
          ),
          SizedBox(height: 12.h),
          AuthTexFormFiledWidget(
            controller: vController,
            textInputAction: TextInputAction.done,
            hintText: 'ishchi / ish beruvchi',
            validator: (v) {
              return v!.length >= 3 ? null : "Ma'lumot Xato";
            },
          ),
          const Expanded(child: SizedBox()),
          SizedBox(
            width: 200.w,
            child: GlobalButton(
              title: 'Akkaunt ochish',
              onTap: () {
                if (formGlobalKey.currentState!.validate()) {
                  formGlobalKey.currentState!.save();
                  isAuth = true;
                  setState(() {
                  });
                }
              },
              colorText: Colors.white,
              colorButton: const Color(0xffC1C4DF),
              isActive: true,
            ),
          ),
          SizedBox(height: 10.h)
        ],
      ),
    );
  }
}
