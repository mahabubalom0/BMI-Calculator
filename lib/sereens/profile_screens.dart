import 'package:bmi_calculator/component/allIcons.dart';
import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/component/allsize.dart';
import 'package:bmi_calculator/sereens/homebtn.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ProfileDisplayPage extends StatefulWidget {
  @override
  State<ProfileDisplayPage> createState() => _ProfileDisplayPageState();
}

class _ProfileDisplayPageState extends State<ProfileDisplayPage> {
  String? name;
  String? year;
  String? address;
  String? about;

  @override
  void initState() {
    super.initState();
    loadSavedData();
  }

  // 🔹 Saved Data Load করা
  void loadSavedData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name');
      year = prefs.getString('year');
      address = prefs.getString('address');
      about = prefs.getString('about');
    });
  }

  // 🔹 Data Clear করা
  void clearData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    setState(() {
      name = year = address = about= null;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("🧹 Data Cleared!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Allcolor.bgcolor,

      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

        Padding(
          padding: const EdgeInsets.only(left: 18.0,top: 10),
          child: InkWell(
              onTap: (){
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Icon(Allicons.back_fowrad,color: Allcolor.white,)),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 80.0),

          child: Center(
            child: CircleAvatar(
              backgroundColor: Allcolor.white,
              radius: 80,
              backgroundImage: AssetImage("assets/image/png/persion.png"),


            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28.0,right: 28.0,top: 30),
          child: Container(
            height: 42.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              color: Allcolor.light_gray
            ),
            child:
            Center(
            child:  Text("👤 Name: $name",style: TextStyle(color: Allcolor.white,fontSize: Allsize.submedium),),
          ),
          ),


        ),

        Padding(
          padding: const EdgeInsets.only(left: 28.0,right: 28.0,top: 10),
          child: Container(
            height: 42.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              color: Allcolor.light_gray
            ),
            child:
            Center(
            child:  Text(" Year: $year",style: TextStyle(color: Allcolor.white),),
          ),
          ), ),Padding(
          padding: const EdgeInsets.only(left: 28.0,right: 28.0,top: 10),
          child: Container(
            height: 42.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              color: Allcolor.light_gray
            ),
            child:
            Center(
            child:  Text("👤 Adderss: $address",style: TextStyle(color: Allcolor.white),),
          ),
          ), ),Padding(
          padding: const EdgeInsets.only(left: 28.0,right: 28.0,top: 10),
          child: Container(
            height: 42.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              color: Allcolor.light_gray
            ),
            child:
            Center(
            child:  Text("👤 About: $about",style: TextStyle(color: Allcolor.white),),
          ),
          ), ),

      ],)
    );
  }
}
