import 'package:bmi_calculator/component/allIcons.dart';
import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/component/allsize.dart';
import 'package:bmi_calculator/sereens/book_screens.dart';
import 'package:bmi_calculator/sereens/daily_care.dart';
import 'package:bmi_calculator/sereens/favarite_screens.dart';
import 'package:bmi_calculator/sereens/homebtn.dart';
import 'package:bmi_calculator/sereens/profile_input.dart';
import 'package:bmi_calculator/sereens/profile_screens.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePaje extends StatefulWidget {
  const HomePaje({super.key});

  @override
  State<HomePaje> createState() => _HomePajeState();


}

class _HomePajeState extends State<HomePaje> {

  List<Widget>page=[Homebtn(),BookScreens(),ProfileDisplayPage(),];

  int currentindex =0;
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(
        
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileDisplayPage()));
              },
              child: CircleAvatar(
                backgroundColor: Allcolor.white,
                radius: 25,
                child:  Icon(Allicons.persion,size: Allsize.iconmeduam,color: Allcolor.pinkcolor,),

              ),
            ),
          ),

        ],
        backgroundColor: Allcolor.prymaricolor,
        iconTheme: IconThemeData(color: Allcolor.white),
        centerTitle: true,
        title: Text("সুসাস্থে প্রতিদিন",style: TextStyle(color: Allcolor.white, fontSize: Allsize.submedium,fontWeight: FontWeight.bold),),
    
    
      ),
bottomNavigationBar: CurvedNavigationBar(

  backgroundColor: Allcolor.prymaricolor,
  color: Allcolor.pinkcolor,
  height: 55.0,
  index: currentindex,
  buttonBackgroundColor: Allcolor.white,


  items: [
    Icon(Allicons.home,size: 35,),
    Icon(Allicons.bookicons,size: 35,),
    Icon(Allicons.persion,size: 35,),


  ],

  onTap: (value) {
    setState(() {
      currentindex = value;
    });
  },
),

      drawer: Padding(
        padding: const EdgeInsets.only(top: 57.0),
        child: Drawer(
          child: Column(children: [
            Container(
              height: 260,
              width: double.infinity,
              color: Allcolor.prymaricolor,
              child:

              Icon(Allicons.bookicons,color: Allcolor.pinkcolor,size: Allsize.iconbig,),
            ),

            InkWell(
              hoverColor: Allcolor.pinkcolor.withOpacity(0.3),
              onTap: (){

                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Homebtn()));                });
              },
              child: Card(
                color: Allcolor.redcolor.withOpacity(0.1),
                child: ListTile(leading: Icon(Allicons.home,color: Allcolor.blackcolor,),
                  title: Text("Home",style: TextStyle(color: Allcolor.blackcolor),),
                  trailing: Icon(Allicons.back,color: Allcolor.blackcolor,),

                ),
              ),
            ),
            InkWell(
              hoverColor: Allcolor.pinkcolor.withOpacity(0.3),
              onTap: (){},
              child: Card(
                color: Allcolor.redcolor.withOpacity(0.1),
                child: ListTile(leading: Icon(Allicons.about,color: Allcolor.blackcolor,),
                  title: Text("About",style: TextStyle(color: Allcolor.blackcolor),),
                  trailing: Icon(Allicons.back,color: Allcolor.blackcolor,),

                ),
              ),
            ),

            InkWell(
              hoverColor: Allcolor.pinkcolor.withOpacity(0.3),
              onTap: (){},
              child: Card(
                color: Allcolor.redcolor.withOpacity(0.1),
                child: ListTile(leading: Icon(Allicons.setting,color: Allcolor.blackcolor,),
                  title: Text("Setting",style: TextStyle(color: Allcolor.blackcolor),),
                  trailing: Icon(Allicons.back,color: Allcolor.blackcolor,),

                ),
              ),
            ),
            InkWell(
              hoverColor: Allcolor.pinkcolor.withOpacity(0.3),
              onTap: (){},
              child: Card(
                color: Allcolor.redcolor.withOpacity(0.1),
                child: ListTile(leading: Icon(Allicons.contac,color: Allcolor.blackcolor,),
                  title: Text("Contact Us ",style: TextStyle(color: Allcolor.blackcolor),),
                  trailing: Icon(Allicons.back,color: Allcolor.blackcolor,),

                ),
              ),
            ),
            InkWell(
              hoverColor: Allcolor.pinkcolor.withOpacity(0.3),

              onTap: (){},
              child: Card(
                color: Allcolor.redcolor.withOpacity(0.1),
                child: ListTile(leading: Icon(Allicons.helth,color: Allcolor.blackcolor,),
                  title: Text("Health",style: TextStyle(color: Allcolor.blackcolor),),
                  trailing: Icon(Allicons.back,color: Allcolor.blackcolor,),

                ),
              ),
            ),
            InkWell(
              hoverColor: Allcolor.pinkcolor.withOpacity(0.3),
              onTap: (){

                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileInputPage()));
                });
              },
              child: Card(
                color: Allcolor.redcolor.withOpacity(0.1),
                child: ListTile(leading: Icon(Allicons.persion,color: Allcolor.blackcolor,),
                  title: Text("Profile",style: TextStyle(color: Allcolor.blackcolor),),
                  trailing: Icon(Allicons.back,color: Allcolor.blackcolor,),

                ),
              ),
            ),
          ],),

        ),
      ),
        body: page[currentindex],

    );
  }
}
