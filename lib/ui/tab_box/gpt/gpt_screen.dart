import 'package:flutter/material.dart';
import 'package:ishbor/utils/app_image.dart';
import 'package:ishbor/utils/constans.dart';

class GptScreen extends StatelessWidget {
  const GptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: myWidth(context),
        height: myHeight(context),
        child:  Image.asset(
          AppImages.gptB,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
