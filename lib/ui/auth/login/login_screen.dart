import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishbor/ui/auth/widgets/phone_input_component.dart';
import 'package:ishbor/ui/widgets/global_button.dart';
import 'package:ishbor/utils/constans.dart';

import '../../../utils/app_image.dart';
import '../../../utils/my_utils.dart';
import '../widgets/auth_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

late TextEditingController passwordController;
final formGlobalKey = GlobalKey<FormState>();
String phoneNumber = '';

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formGlobalKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.appLogo,
                width: myWidth(context) * 200 / 375,
                height: myHeight(context) * 200 / 812,
              ),
            ],
          ),
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
            controller: passwordController,
            textInputAction: TextInputAction.done,
            hintText: 'Parol',
            validator: (password) {
              return password!.length >= 5 ? null : "Parolingizni kiriting";
            },
          ),
          const Expanded(child: SizedBox()),
          SizedBox(
            width: 140.w,
            child: GlobalButton(
              title: 'Kirish',
              onTap: () {
                if (formGlobalKey.currentState!.validate()) {
                  formGlobalKey.currentState!.save();
                  isAuth != isAuth;
                  setState(() {});
                }
              },
              colorText: Colors.white,
              colorButton: const Color(0xffC086DD),
              isActive: true,
            ),
          ),
          SizedBox(height: 10.h)
        ],
      ),
    );
  }
}
