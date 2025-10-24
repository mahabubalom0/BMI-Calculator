import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bmi_calculator/component/allIcons.dart';
import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/sereens/note_screens/controller/note_controller.dart';
import 'package:bmi_calculator/sereens/note_screens/note_fevorite_screens.dart';
import 'package:bmi_calculator/sereens/note_screens/note_model/note_model.dart';
import 'package:bmi_calculator/sereens/note_screens/note_view_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NoteScreens extends StatefulWidget {
   NoteScreens({super.key});


  @override
  State<NoteScreens> createState() => _NoteScreensState();
}

class _NoteScreensState extends State<NoteScreens> {
  List<Widget> pages = [NoteViewScreens(), NoteFevoriteScreens()];
  int _activeindwex = 0;


  NoteController controler = Get.put(NoteController());

  TextEditingController aboutclt = TextEditingController();
  TextEditingController descriptiontclt = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Allcolor.pinkcolor,
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),

        child: Icon(Icons.add, size: 35, color: Allcolor.white),
        onPressed: () {
          setState(() {
            _showbos(context);
          });
        },
      ),

      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Allcolor.prymaricolor,
        activeColor: Allcolor.white,
        inactiveColor: Allcolor.pinkcolor,
        iconSize: 28,
        gapLocation: GapLocation.center,
        shadow: Shadow(
          color: Allcolor.bgcolor,
          blurRadius: 30.0,
          offset: Offset(20, 10),
        ),
        rightCornerRadius: 15.0,
        leftCornerRadius: 15.0,

        icons: [Allicons.bookicons, Allicons.fevorite],
        onTap: (value) {
          setState(() {
            _activeindwex = value;
          });
        },
        activeIndex: _activeindwex,
      ),
      body: pages[_activeindwex],
    );
  }

  void _showbos(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: SingleChildScrollView(
            child: AlertDialog(
              title: Text(
                "Writing about you",
                style: TextStyle(
                  fontSize: 20,
                  color: Allcolor.light_gray,
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: Column(children: [
                TextFormField(
                  controller: aboutclt,
                  decoration: InputDecoration(
                    labelText: "Enter your about",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0)

                    )
                    ),
                ),
                SizedBox(height: 10,),

                TextFormField(
                  controller: descriptiontclt,
                  decoration: InputDecoration(
                    labelText: "Enter your description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0)

                    )
                    ),
                ),
              ],),
              actions: [
                MaterialButton(
                    color: Allcolor.redcolor,
                    child: Text("Cancel"),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    onPressed: (){
                      setState(() {
                        Navigator.pop(context);
                      });
                    }),
                MaterialButton(
                    color: Allcolor.light_gray,
                    child: Text("Save"),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    onPressed: (){
                     controler.addnote(Notemodel(aboutclt.text, descriptiontclt.text, 'date'));
                      Navigator.pop(context);
                    }),
              ],
            ),
          ),
        );
      },
    );
  }
}
