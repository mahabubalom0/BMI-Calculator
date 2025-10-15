import 'dart:ui';

import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/component/allsize.dart';
import 'package:flutter/material.dart';

class Customenuttonmainach extends StatelessWidget {

  VoidCallback onTap;
   Customenuttonmainach({super.key, required this.onTap});

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
          child:Icon(Icons.remove, size: Allsize.iconmeduam,) ,

        ),
      );
  }}