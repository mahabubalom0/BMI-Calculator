import 'package:bmi_calculator/component/allcolor.dart';
import 'package:flutter/material.dart';

class CuistomeContainer extends StatelessWidget {
  String text;
   CuistomeContainer({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width-50,
      decoration: BoxDecoration(
        color: Allcolor.light_gray,
        borderRadius: BorderRadius.circular(15.0)
      ),

      child: Center(
        child: Text(text,
            style: TextStyle(
            fontSize: 23,
            color: Allcolor.textcc,
            fontWeight: FontWeight.bold)),
      )
    );

  }
}
