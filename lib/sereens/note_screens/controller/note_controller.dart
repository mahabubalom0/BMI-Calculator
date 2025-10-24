

import 'package:bmi_calculator/sereens/note_screens/note_model/note_model.dart';
import 'package:get/get.dart';

class NoteController extends GetxController{

  RxList<Notemodel> notes = <Notemodel>[].obs;



  void addnote(Notemodel note){
    notes.add(note);
    update();
  }
  void deletenote( int index, Notemodel){
    notes.removeAt(index);
    update();
  }
  void updatenote( int index,Notemodel note ){
    notes[index]=note;
    update();
  }

}