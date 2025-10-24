import 'package:bmi_calculator/sereens/bmidesignscernce.dart';
import 'package:bmi_calculator/sereens/home_paje.dart';
import 'package:bmi_calculator/sereens/profile_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:

      HomePaje()
      // ProfileInputPage()

      //Bmidesignscernce() ,



    );
  }
}
