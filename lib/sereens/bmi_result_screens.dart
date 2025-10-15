import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/component/allsize.dart';
import 'package:flutter/material.dart';

import '../component/customeClaculatebtn.dart';

class BmiResultScreens extends StatelessWidget {

 final double? result;
   BmiResultScreens({super.key,required this.result});


 String getResultText(double bmi) {
   if (bmi >= 25) {
     return 'অতিরিক্ত ওজন';
   } else if (bmi > 18.5) {
     return 'স্বাভাবিক ওজন ';
   } else {
     return 'কম ওজন';
   }
 }
 String getResultMessage(double bmi) {
   if (bmi >= 25) {
     return '''🌅 সকালে খালি পেটে ১ গ্লাস গরম পানি + লেবু খাও।
🚶‍♂️ প্রতিদিন ৩০–৪০ মিনিট হাঁটা বা ব্যায়াম কর।
🍚 ভাত কম খাও, বদলে সবজি আর প্রোটিন বাড়াও।
🕒 রাতে ঘুমানোর আগে কিছু না খাওয়া, অন্তত ৩ ঘণ্টা আগে খাওয়া শেষ করা।
🚫 চিনি, কোমল পানীয়, ভাজাভুজি, ফাস্টফুড বাদ দেও।
💧 দিনে ৮–১০ গ্লাস পানি খাও।
😴 পর্যাপ্ত ঘুম (৬–৮ ঘণ্টা) নেও।
📱 নিয়মিত ওজন মাপ, মোটিভেটেড থাক।''';
   } else if (bmi > 18.5) {
     return 'তোমার শরীরের ওজন স্বাভাবিক। দারুন!';
   } else {
     return '''ওজন বাড়াতে হলে প্রতিদিন নিচের ছোট ছোট অভ্যাসগুলো মেনে চলো 👇
🍛 দিনে ৪–৫ বার খাবার খা, বেশি বিরতি না দে।
🥚 সকালে ডিম, দুধ, কলা বা ওটস খা।
🍗 দুপুরে ভাতের সঙ্গে ডাল, মুরগি, ডিম বা মাছ রাখ।
🥜 খাবারের মাঝে মাঝে বাদাম, চিড়া, দই, পিনাট বাটার খা।
🏋️‍♂️ হালকা ব্যায়াম বা জিম কর, এতে ক্ষুধা বাড়ে আর পেশি গঠিত হয়।
💧 পর্যাপ্ত পানি খাও, শরীর হাইড্রেট রাখ।
😴 রাতে ভালো ঘুম (৭–৮ ঘণ্টা) নাও।
🚫 ধূমপান বা ফাস্টফুডে নির্ভর করোনা, এতে ক্ষতি হয়।''';
   }
 }


  @override
  Widget build(BuildContext context) {
    final bmiValue = result ?? 0;

   final resulrtext = getResultText(bmiValue);
   final resulrtextmesseage = getResultMessage(bmiValue);




    return Scaffold(
      backgroundColor: Allcolor.blackcolor,

      appBar: AppBar(
        backgroundColor: Allcolor.blackcolor,
        leading: Icon(Icons.arrow_back,size: Allsize.larger,color: Allcolor.blackcolor,),
        centerTitle: true,
        title: Text("BMI Calculator", style: TextStyle(fontSize: Allsize.meduam,color: Allcolor.white,fontWeight: FontWeight.bold),),
      ),
      
      body:SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child:  Text("Your Result",style: TextStyle(color: Allcolor.white,fontSize: Allsize.titlesize,fontWeight: FontWeight.bold),),
            ),

           Expanded(
             flex: 16,
             child: Padding(
               padding: const EdgeInsets.all(18.0),
               child: Container(
                 decoration: BoxDecoration(
                  color: Allcolor.prymaricolor,
                   borderRadius:BorderRadius.circular(25.0)
                 ),

                 width: double.infinity,

               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 10.0),
                     child: Text( resulrtext,style: TextStyle(color: Allcolor.textcc,fontSize: Allsize.meduam),),
                   ),
                       SizedBox(height: 13.0,),
                   Text( "${result?.toStringAsFixed(2)}",style: TextStyle(color: Allcolor.white,fontSize: Allsize.biglarger,fontWeight: FontWeight.bold),),
                   SizedBox(height: 15.0,),
                   Padding(
                     padding: const EdgeInsets.only(left: 5.0,right: 5),
                     child: SelectableText(
                         resulrtextmesseage,style: TextStyle(color: Allcolor.textcc,fontSize: Allsize.small)),
                   )

               ],) ),
             ),),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Customeclaculatebtn(onTap:(){
                Navigator.pop(context);
              } ,
              text: "Re-Calculate",

              ),
            )



        ],),
      )


    );
  }
}
