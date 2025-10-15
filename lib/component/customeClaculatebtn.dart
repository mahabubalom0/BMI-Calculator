import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/component/allsize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customeclaculatebtn extends StatelessWidget {

  VoidCallback onTap;
  String text;
   Customeclaculatebtn({super.key,required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
         width: double.infinity,
        decoration: BoxDecoration(
          color: Allcolor.pinkcolor,
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Center(child: Text(text, style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold, color: Allcolor.white),)),
      ),
    );
  }
}
