import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/component/allsize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {

  VoidCallback onTap;

   Custombutton({super.key, required this.onTap,});

  @override
  Widget build(BuildContext context) {

    return
      InkWell(
        onTap: onTap,
        child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Allcolor.pinkcolor,


        ),
        child:Icon(Icons.add, size: Allsize.iconmeduam,) ,

            ),
      );
  }
}
