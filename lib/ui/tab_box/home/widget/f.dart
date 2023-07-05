import 'package:flutter/material.dart';
import 'package:ishbor/utils/constans.dart';

class FScreen extends StatelessWidget {
  const FScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(width: myWidth(context),height: myHeight(context),child: Image.asset('assets/images/img_6.png',fit: BoxFit.cover,),),
    );
  }
}
