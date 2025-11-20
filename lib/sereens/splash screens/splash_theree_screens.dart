import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/component/widget/all_styles.dart';
import 'package:bmi_calculator/sereens/home_paje.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class SplashThereeScreens extends StatefulWidget {
  const SplashThereeScreens({super.key});

  @override
  State<SplashThereeScreens> createState() => _SplashThereeScreensState();
}

class _SplashThereeScreensState extends State<SplashThereeScreens> {
  @override

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      Get.off(HomePaje());

    });
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(children: [
          Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
                color: Allcolor.white
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 550.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(children: [
                    Text("LENGTE",style: TextStyle(fontSize: 22),),
                    Spacer(),
                    Text("CM")
                  ],),
                  
                ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(

                      height: 13,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Allcolor.blackcolor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        height: 13,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Allcolor.prymaricolor
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(children: [
                    Text("OMVANG",style: TextStyle(fontSize: 22),),
                    Spacer(),
                    Text("CM")
                  ],),

                ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(

                      height: 13,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Allcolor.blackcolor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        height: 13,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Allcolor.prymaricolor
                        ),
                      ),
                    ),
                  )
              ],),
            ),
          ),
          Container(
            width: Get.width,
            height: Get.height/2,
            decoration: BoxDecoration(
                color: Allcolor.prymaricolor
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Image.asset("assets/image/png/persion-removebg-preview.png",height: 300,),
                  Text("Doctor at your doorstep",style: AllStyles.titletextstyles,)

              ],),
            ),
          ),
          Positioned(
              top: 300,
              left: 70,

              child: Column(children: [

            Container(
              width: Get.width/1.5,
              height: Get.height/2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:Allcolor.white
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Container(
                height:Get.height/2,
                width: Get.width/1.6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Allcolor.secondryicolor
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("RATIO",style: TextStyle(fontSize: 30,color: Allcolor.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Text("0",style: TextStyle(fontSize: 55,color: Allcolor.white),),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Text(".54",style: TextStyle(fontSize: 35,color: Allcolor.white)),
                        ),
                      ],)
                ],),
              )

              ],),


            ), Container(
              width: Get.width/1.7,
              height: Get.height/2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:Allcolor.secondryicolor
              ), ),
          ],)),

        ],)
      ],),

    );
  }
}
