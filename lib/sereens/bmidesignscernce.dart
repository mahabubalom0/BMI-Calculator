import 'package:bmi_calculator/sereens/bmi_result_screens.dart';
import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/component/allsize.dart';
import 'package:bmi_calculator/component/custombutton.dart';
import 'package:bmi_calculator/component/customeClaculatebtn.dart';
import 'package:bmi_calculator/component/customenuttonmainach.dart';
import 'package:flutter/material.dart';



class Bmidesignscernce extends StatefulWidget {
  const Bmidesignscernce({super.key});

  @override
  State<Bmidesignscernce> createState() => _BmidesignscernceState();
}

class _BmidesignscernceState extends State<Bmidesignscernce> {
  bool ismale = false;
  int height = 0;
  int weight= 19;
  int age = 2;
  double _corentindex=0.0;
 // RangeValues _rangeValues = RangeValues(0, 250);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black.withOpacity(0.2),
      centerTitle: true,
      title: Text("BMI Calculator",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.black.withOpacity(0.9),
      body: Column(children: [
        Expanded(
            flex: 5,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
          Expanded(
              flex:5,
              child:Padding(
                padding: const EdgeInsets.all(13.0),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      ismale= true;
                    });
                  },
                  child: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                    color:ismale?Allcolor.pinkcolor: Allcolor.prymaricolor
                  ),child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                    Icon(Icons.male,size: Allsize.iconlarger,color: Allcolor.white,),
                    SizedBox(height: 5.0,),
                    Text("Male",style: TextStyle(color: Allcolor.white,fontSize: Allsize.meduam))
                  ],),),
                ),
              )),
          SizedBox(width: 10.0,),
          Expanded(
            flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      ismale =false;
                    });
                  },
                  child: Container(
                              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.0),
                    color:ismale==false?Allcolor.pinkcolor: Allcolor.prymaricolor),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Icon(Icons.female, size: Allsize.iconlarger,color: Allcolor.white,),
                      SizedBox(height: 12.0,),
                      Text("Famel",style: TextStyle(color: Allcolor.white,fontSize: Allsize.meduam),)
                    ],),
                            ),
                ),
              ))
        ],)

        ),
        Expanded(
            flex:5 ,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                color: Allcolor.prymaricolor
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                Text("Height",style: TextStyle(fontSize: Allsize.small, color: Allcolor.white),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text("$height",style: TextStyle(
                          fontSize: 45,color: Colors.white
                      ),),
                      Text("cm",style: TextStyle(color: Allcolor.white),),


                    ],
                  ),

                  SliderTheme(data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Allcolor.pinkcolor,
                    inactiveTrackColor: Colors.brown,
                    thumbColor: Allcolor.redcolor,

                  ) , child: Slider(value: _corentindex,
                      min: 0,
                      max: 250,
                      divisions: 250,
                      label: _corentindex.toStringAsFixed(1),


                      onChanged: (value){

                        setState(() {
                          _corentindex =value;
                          height= _corentindex.round();


                        });
                      }))
              ],),),
            )),
        SizedBox(height: 10.0,),
        Expanded(
            flex: 5,
            child:Row(children: [
              Expanded(child:Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.0),
                    color: Allcolor.prymaricolor
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                    Text("Weight", style: TextStyle(color: Allcolor.white, fontSize: Allsize.meduam),),
                    Text("$weight", style: TextStyle(color: Allcolor.white, fontSize: Allsize.submedium),),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [


                          Expanded(
                              flex: 2,
                              child: Customenuttonmainach(onTap: (){

                                setState(() {
                                  weight--;
                                });
                              })),
                          Expanded(
                            flex:2,
                            child: Custombutton(onTap: (){
                              setState(() {
                                weight++;
                              }); },),),],)],),
                ),
              ) ),

              Expanded(child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Allcolor.prymaricolor,
                    borderRadius: BorderRadius.circular(13.0)

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                    Text("Age",style: TextStyle(color: Allcolor.white,fontSize: Allsize.meduam),),
                      Text("$age", style: TextStyle(color: Allcolor.white, fontSize: Allsize.larger),),
                      Row(children: [
                        Expanded(child: Customenuttonmainach(onTap: (){

                          setState(() {
                            age--;
                          });
                        })),
                        Expanded(child: Custombutton(onTap: (){

                          setState(() {
                            age++;
                          });
                        })),
                      ],)
                  ],),
                ),
              )),
            ],) ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Customeclaculatebtn(
            text: "Calculate",
            onTap: (){

            setState(() {
              calculatorbmi();


            });
          },),
        )
      ],),



    );
  }

  void calculatorbmi(){

    double bmihight = height/100;
    bmivalue = weight /(bmihight*bmihight);
   print("BMI: $bmivalue");
   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BmiResultScreens(result: bmivalue,)));


}
  double ?bmivalue;
}
