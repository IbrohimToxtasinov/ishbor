import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: const [
          Center(
            child: Text("OnBoarding Screen"),
          ),
        ],
      ),
    );
  }
}