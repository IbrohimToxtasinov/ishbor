import 'package:flutter/material.dart';
import 'package:ishbor/utils/constans.dart';

class ThScreen extends StatelessWidget {
  const ThScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(width: myWidth(context),height: myHeight(context),child: Image.asset('assets/images/img_5.png',fit: BoxFit.cover,),),
    );
  }
}
