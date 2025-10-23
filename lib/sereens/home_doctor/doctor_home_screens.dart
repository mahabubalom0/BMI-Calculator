import 'package:bmi_calculator/component/allIcons.dart';
import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/component/allsize.dart';
import 'package:bmi_calculator/sereens/home_doctor/beli_5tips_screens.dart';
import 'package:bmi_calculator/sereens/home_doctor/food_intolerance_screens.dart';
import 'package:flutter/material.dart';

class DoctorHomeScreens extends StatelessWidget {
  const DoctorHomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Allcolor.bgcolor,
      appBar: AppBar(
        backgroundColor: Allcolor.pinkcolor,
        centerTitle: true,
        title: Text("ঘরোয়া চিকিৎসা",style: TextStyle(color: Allcolor.blackcolor,fontWeight: FontWeight.bold,fontSize: Allsize.submedium),),
      ),
      body: ListView(
        children: [
          Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FoodIntoleranceScreens() ));
              },
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("খাদ্যে অসহনীয়তা",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("পরিপাকতন্ত্রের সুস্থতা",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Beli5tipsScreens()));
              },
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("পেট সুস্থ রাখার পাঁচটি ঘরোয়া উপায়",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("পরিপাকতন্ত্রের সুস্থতা",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){},
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("সুগার কমে যাওয়া",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("ডায়াবেটিস",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){},
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("গর্ভাবস্থায় পাইলস",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("গর্ভাবস্থায় সমস্যা ও করণীয়",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){},
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("হাইপারগ্লাইসেমিয়া",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("ডায়াবেটিস",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){},
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("কোষ্ঠকাঠিন্য",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("পরিপাকতন্ত্রের সুস্থতা",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){},
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("এনাল ফিসার",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("পরিপাকতন্ত্রের সুস্থতা",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){},
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("শিশুদের ডায়রিয়া",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("পরিপাকতন্ত্রের সুস্থতা",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){},
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("কোষ্ঠকাঠিন্য দূর করতে ইসবগুলের ভুসি",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("পরিপাকতন্ত্রের সুস্থতা",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){},
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("পাইলস",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("পরিপাকতন্ত্রের সুস্থতা",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){},
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("খাবার স্যালাইন বানানোর নিয়ম",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("প্রাথমিক চিকিৎসা",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){},
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("ফুড পয়জনিং",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("পরিপাকতন্ত্রের সুস্থতা",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){},
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("পাতলা পায়খানা ও বমি",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("পরিপাকতন্ত্রের সুস্থতা",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),Card(
            color: Allcolor.prymaricolor.withOpacity(0.5),
            child: ListTile(
              selectedColor: Allcolor.prymaricolor,
              onTap: (){},
              leading: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/image/png/food.PNG"),fit: BoxFit.cover)
                  )),

              title: Text("বদহজম",style: TextStyle(fontSize: Allsize.meduam,fontWeight: FontWeight.bold,color: Allcolor.redcolor),),
              subtitle: Text("পরিপাকতন্ত্রের সুস্থতা",style: TextStyle(fontSize: Allsize.small,color: Allcolor.white),),
              trailing: Icon(Allicons.next,color: Allcolor.white,),
            ),
          ),

        ],
      ),


    );

  }

}
