import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/component/widget/all_styles.dart';
import 'package:bmi_calculator/sereens/splash%20screens/splash_theree_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashSecondScreens extends StatefulWidget {
  const SplashSecondScreens({super.key});

  @override
  State<SplashSecondScreens> createState() => _SplashSecondScreensState();
}

class _SplashSecondScreensState extends State<SplashSecondScreens> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4),(){
      Get.off(SplashThereeScreens());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),

          // 🖼️ IMAGE SECTION
          Expanded(
            flex: 11,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Allcolor.containerbg,
                  image: const DecorationImage(
                    image: AssetImage("assets/image/png/splashss.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          // 🩺 TEXT SECTION
          Expanded(
            flex: 11,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Allcolor.containerbg,
                ),
                child: Center(
                  child: Text(
                    'Your Health,\nOur Priority',
                    textAlign: TextAlign.center, // ✅ টেক্সট এখন একদম মাঝখানে যাবে
                    style: AllStyles.titletextstyles.copyWith(
                      color: Allcolor.blackcolor,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // 🚀 BUTTON SECTION
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  
                  Get.off(SplashThereeScreens());
                   },
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Allcolor.prymaricolor,
                  ),
                  child: Center(
                    child: Text(
                      "Let's Begin",
                      style: AllStyles.titletextstyles.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
