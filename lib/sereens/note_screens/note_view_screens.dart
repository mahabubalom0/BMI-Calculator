import 'package:bmi_calculator/component/allIcons.dart';
import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/component/allsize.dart';
import 'package:bmi_calculator/sereens/note_screens/controller/note_controller.dart';
import 'package:bmi_calculator/sereens/note_screens/note_model/note_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NoteViewScreens extends StatelessWidget {
  NoteViewScreens({super.key});

  //getx controller
  NoteController controller = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Allcolor.prymaricolor,
        centerTitle: true,
        title: Text(
          "Note Screens",
          style: TextStyle(
            fontSize: 20,
            color: Allcolor.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox(
        width: Get.width,
        child: GetBuilder<NoteController>(
          builder: (_) {
            return controller.notes.isEmpty? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Icon(Allicons.folder,color: Allcolor.redcolor,size: Allsize.iconlarger,),
              Text("Emply Folder",style: TextStyle(color: Allcolor.redcolor,fontSize: Allsize.larger),)
            ],): ListView.builder(
              itemCount: controller.notes.length,
                itemBuilder: (context, index) {
                Notemodel note = controller.notes[index];

              return ListTile(
                title: Text(note.about),
                subtitle: Text(note.description),
                trailing: Row(children: [
                  Icon(Allicons.edite),
                  SizedBox(width: 10.0,),
                  Icon(Allicons.delete)
                ],),


              );
            });
          },
        ),
      ),
    );
  }
}
