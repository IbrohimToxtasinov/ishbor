import 'package:flutter/material.dart';
import 'package:ishbor/utils/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.cF9F9F9,
      body: Center(child: Text("Login")),
    );
  }
}
