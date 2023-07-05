import 'package:flutter/material.dart';
import 'package:ishbor/utils/constans.dart';

import '../../../utils/app_image.dart';

class MScreen extends StatelessWidget {
  const MScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(width: myWidth(context),height: myHeight(context),child: Image.asset(AppImages.mB,fit: BoxFit.cover,)),
    );
  }
}
