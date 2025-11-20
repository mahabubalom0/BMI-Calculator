

import 'dart:math';

import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/component/widget/all_styles.dart';
import 'package:bmi_calculator/sereens/splash%20screens/splash_second_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SplashOneScreens extends StatefulWidget {
  const SplashOneScreens({super.key});

  @override
  State<SplashOneScreens> createState() => _SplashOneScreensState();
}

class _SplashOneScreensState extends State<SplashOneScreens> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4),(){
      Get.off(SplashSecondScreens());
    });
    super.initState();
  }
  Widget build(BuildContext context) {




    Size size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Allcolor.prymaricolor,
      body: InkWell(
        onTap: (){
          Get.off(SplashSecondScreens());
        },
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                height: size.height-550,
                width: size.width-140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Allcolor.pinkcolor,
                 // image: DecorationImage(image: AssetImage("assets/image/png/psycology.png"),)
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Icon(MdiIcons.homeAlert,size: 230,color: Allcolor.prymaricolor,),
                )) ),
              SizedBox(height: 10,),
              Text("HOME DOCTOR",style: AllStyles.textboundstyles,),
            SizedBox(height: 120,),
              Text("Let's Go....",style: AllStyles.titletextstyles,)





          ],),
        ),
      ),

    );
  }
}
