import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/sereens/bmidesignscernce.dart';
import 'package:bmi_calculator/sereens/daily_care.dart';
import 'package:bmi_calculator/sereens/home_doctor/doctor_home_screens.dart';

import 'package:flutter/material.dart';

class Homebtn extends StatefulWidget {
  const Homebtn({super.key});

  @override
  State<Homebtn> createState() => _HomebtnState();
}

class _HomebtnState extends State<Homebtn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Allcolor.bgcolor,


      body: SingleChildScrollView(
        child: Column(children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 60.0,top: 40),
            child: InkWell(
              onTap: (){
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Bmidesignscernce()));
                });
              },
              child: Container(
                height: 170,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Allcolor.pinkcolor,
                //  image: DecorationImage(image: AssetImage("assets/image/png/bmicalculator.jpg"),fit: BoxFit.cover)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Allcolor.prymaricolor,
                        borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage("assets/image/jpg/bmicalculator.jpg"),fit: BoxFit.cover)
              ),
                    ),
                    SizedBox(height: 10,),
                    Text("BMI Calculator",style: TextStyle(color: Allcolor.white, fontSize: 19,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 60.0,top: 40),
            child: InkWell(
              onTap: (){
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DailyCare()));
                });
              },
              child: Container(
                height: 170,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Allcolor.pinkcolor,
                //  image: DecorationImage(image: AssetImage("assets/image/png/bmicalculator.jpg"),fit: BoxFit.cover)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Allcolor.prymaricolor,
                        borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage("assets/image/png/nijerjotnno.png"),fit: BoxFit.fitWidth)
              ),
                    ),
                    SizedBox(height: 10,),

                    Center(child: Text("প্রতিদিনের যত্ন",style: TextStyle(color: Allcolor.white, fontSize: 19,fontWeight: FontWeight.bold, ),)),


                  ],
                ),
              ),
            ),
          ),  ],),

          Column(children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 60.0,top: 40),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DoctorHomeScreens()));
                    });
                  },
                  child: Container(
                    height: 170,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Allcolor.pinkcolor,
                      //  image: DecorationImage(image: AssetImage("assets/image/png/bmicalculator.jpg"),fit: BoxFit.cover)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 130,
                          decoration: BoxDecoration(
                              color: Allcolor.prymaricolor,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage("assets/image/jpg/doctor_home.jpg"),fit: BoxFit.cover)
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("ঘরোয়া চিকিৎসা",style: TextStyle(color: Allcolor.white, fontSize: 19,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 60.0,top: 40),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DailyCare()));
                    });
                  },
                  child: Container(
                    height: 170,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Allcolor.pinkcolor,
                      //  image: DecorationImage(image: AssetImage("assets/image/png/bmicalculator.jpg"),fit: BoxFit.cover)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 130,
                          decoration: BoxDecoration(
                              color: Allcolor.prymaricolor,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage("assets/image/png/nijerjotnno.png"),fit: BoxFit.fitWidth)
                          ),
                        ),
                        SizedBox(height: 10,),

                        Center(child: Text("প্রতিদিনের যত্ন",style: TextStyle(color: Allcolor.white, fontSize: 19,fontWeight: FontWeight.bold, ),)),


                      ],
                    ),
                  ),
                ),
              ),  ],),



          ],),

        ],),

      ),

    );
  }
}
