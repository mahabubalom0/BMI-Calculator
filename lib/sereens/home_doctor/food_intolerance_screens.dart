import 'package:bmi_calculator/component/allcolor.dart';
import 'package:flutter/material.dart';

class FoodIntoleranceScreens extends StatelessWidget {
  const FoodIntoleranceScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Allcolor.light_gray,
       centerTitle: true,
       title: Text("খাদ্যে অসহনীয়তা",style: TextStyle(fontWeight: FontWeight.bold),),

     ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: [
            Text('''নির্দিষ্ট কিছু খাবারে হজমে সমস্যা হওয়া এবং সেগুলো খাওয়ার পর শরীরে বিরূপ প্রতিক্রিয়া দেখা দেওয়ার ঘটনাকে খাদ্যে অসহনীয়তা বলা হয়।

খাদ্যে অসহনীয়তার কারণে বিভিন্ন লক্ষণ দেখা দিতে পারে। যেমন: পেট ফাঁপা ভাব ও পেট ব্যথা। এসব লক্ষণ সাধারণত খাবার খাওয়ার কয়েক ঘন্টা পরে দেখা দেয়।

খাদ্যে অসহনীয়তায় ভুগছেন এমন মনে করা মানুষের সংখ্যা বিগত বছরগুলোতে অনেকখানি বেড়ে গিয়েছে। তবে কতজন মানুষ প্রকৃতপক্ষেই এই সমস্যায় ভুগছেন সেটি নির্ধারণ করা কঠিন।

অনেকেই খাদ্যে অসহনীয়তায় ভুগছেন বলে মনে করলেও দেখা যায় যে তাদের লক্ষণগুলোর পেছনে আসলে ভিন্ন কোনো কারণ দায়ী।''', style: TextStyle(fontWeight: FontWeight.w500),)
        
             ,
              SizedBox(height: 8,),
              Text("খাদ্যে অসহনীয়তার লক্ষণ",style: TextStyle(fontSize: 25,color: Allcolor.pinkcolor,fontWeight: FontWeight.bold),),
              Text('''সাধারণত যেসব খাবারে রোগীর অসহনীয়তা রয়েছে সেগুলো খাওয়ার কয়েক ঘন্টা পর কিছু লক্ষণ দেখা দেয়। তবে এই সাধারণ লক্ষণগুলো যে কেবল খাদ্যে অসহনীয়তার জন্যই নির্দিষ্ট—তা নয়। বিভিন্ন ধরনের রোগেও এই জাতীয় লক্ষণগুলো দেখা যায়।

একারণে রোগীর সত্যিই কোনো খাবারে অসহনীয়তা আছে কি না সেটি নির্ধারণ করা কঠিন হয়ে পড়ে।


নির্দিষ্ট কোনো খাবার সহ্য না হলে রোগীর মধ্যে সাধারণত নিচের লক্ষণগুলো দেখা দেয়—'''),

             Row(children: [
               Icon(Icons.ac_unit_rounded),
               SizedBox(width: 20,),
               Text("হজম সংক্রান্ত সমস্যা",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),),

             ],),

              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(children: [
                 Icon(Icons.tag_faces_rounded),
                 SizedBox(width: 20,),
                 Text("পেট ব্যথা",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600,color: Allcolor.redcolor),),

                             ],),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(children: [
                 Icon(Icons.tag_faces_rounded),
                 SizedBox(width: 20,),
                 Text("পেট ফাঁপা ভাব",style: TextStyle(color:Allcolor.redcolor, fontSize: 23,fontWeight: FontWeight.w600),),

                             ],),
              ),Padding(
               padding: const EdgeInsets.only(left: 25.0),
               child: Row(children: [
                 Icon(Icons.tag_faces_rounded),
                 SizedBox(width: 20,),
                 Text("বায়ুর সমস্যা",style: TextStyle(color: Allcolor.redcolor, fontSize: 23,fontWeight: FontWeight.w600),),

               ],),
             ),Padding(
               padding: const EdgeInsets.only(left: 25.0),
               child: Row(children: [
                 Icon(Icons.tag_faces_rounded),
                 SizedBox(width: 20,),
                 Text("পাতলা পায়খানা",style: TextStyle(color: Allcolor.redcolor, fontSize: 23,fontWeight: FontWeight.w600),),

               ],),
             ),Row(children: [
               Icon(Icons.ac_unit_rounded),
               SizedBox(width: 20,),
               Text("অন্যান্য সমস্যা",style: TextStyle( fontSize: 23,fontWeight: FontWeight.w600),),

             ],),Padding(
               padding: const EdgeInsets.only(left: 25.0),
               child: Row(children: [
                 Icon(Icons.tag_faces_rounded),
                 SizedBox(width: 20,),
                 Text("ত্বকে ফুসকুড়ি বা র‍্যাশ দেখা দেওয়া",style: TextStyle(color: Allcolor.redcolor, fontSize: 23,fontWeight: FontWeight.w600),),

               ],),
             ),Padding(
               padding: const EdgeInsets.only(left: 25.0),
               child: Row(children: [
                 Icon(Icons.tag_faces_rounded),
                 SizedBox(width: 20,),
                 Text("চুলকানি হওয়া",style: TextStyle(color: Allcolor.redcolor, fontSize: 23,fontWeight: FontWeight.w600),),

               ],),
             ),
              SizedBox(height: 8,),
              Text("খাদ্যে অসহনীয়তার মতো লক্ষণ দেখা দিতে পারে যেসব রোগে----",style: TextStyle(fontSize: 23,color: Allcolor.pinkcolor,fontWeight: FontWeight.bold),),

        Text('''নিয়মিতভাবে নিচের চারটি লক্ষণ দেখা দিলে এবং লক্ষণগুলোর কারণ সম্পর্কে নিশ্চিত না হতে পারলে ডাক্তারের পরামর্শ নিতে হবে—

ডায়রিয়া
পেট ফাঁপা ভাব
পেট ব্যথা
ত্বকে ফুসকুড়ি বা র‍্যাশ হওয়া
ডাক্তার রোগীর সাথে কথা বলে লক্ষণগুলোর ভিত্তিতে রোগ নির্ণয় করবেন। প্রয়োজনে তিনি রক্ত পরীক্ষাসহ অন্যান্য পরীক্ষা করানোর পরামর্শ দিতে পারেন।

সাধারণত নিচের রোগগুলোর ক্ষেত্রে খাদ্যে অসহনীয়তার মতো লক্ষণ দেখা দেয়—

ইরিটেবল বাওয়েল সিন্ড্রোম (Irritable Bowel Syndrome)
মানসিক চাপ ও দুশ্চিন্তা
ল্যাকটোজ ইনটলারেন্স
সিলিয়াক ডিজিজ
ইনফ্ল্যামেটরি বাওয়েল ডিজিজ
বিভিন্ন খাবারে অ্যালার্জি
পরিপাকতন্ত্র একটি স্পর্শকাতর অঙ্গ। তাই অসুস্থ হলে অথবা মানসিক চাপের মধ্যে থাকলে প্রায়ই পেটের বিভিন্ন সমস্যা দেখা দিতে পারে।''',style: TextStyle(fontSize: 18),),
              
              Text("খাদ্যে অসহনীয়তার কারণ--",style: TextStyle(fontSize: 25,color: Allcolor.pinkcolor,fontWeight: FontWeight.bold),),
              SizedBox(height: 8,),
              Text('''একজন মানুষ ঠিক কী কারণে নির্দিষ্ট কিছু খাবার সহ্য করতে পারে না সেটি সবসময় সহজে বোঝা যায় না। কিছু কিছু ক্ষেত্রে খাবার ও লক্ষণের সম্পর্ক থেকে অসহনীয়তার কারণ সম্পর্কে ধারণা পাওয়া যায়।

যেমন, দুধ, দই ও নরম পনিরে ‘ল্যাকটোজ’ নামের এক ধরনের শর্করা থাকে। অনেকের শরীর এই ল্যাকটোজ হজম করতে পারে না।


তাই দুধ ও দুগ্ধজাত খাবার খাওয়ার পরে অসহনীয়তার লক্ষণ দেখা দিলে রোগীর ‘ল্যাকটোজ ইনটলারেন্স’ আছে বলে ধারণা করা হতে পারে।

এক্ষেত্রে ডাক্তারের পরামর্শ নিয়ে এই রোগের ব্যাপারে নিশ্চিত হয়ে সঠিক চিকিৎসা নিতে হবে।

আবার কিছু মানুষের গম অথবা গমের তৈরি খাবার হজমে সমস্যা হয়। এক্ষেত্রে সাধারণত গমের তৈরি রুটি কিংবা পাউরুটি খাওয়ার পর পেট ফাঁপা ভাব, পেট ব্যথা, বায়ুর সমস্যা, ডায়রিয়া ও বমি বমি ভাব— এমন নানান লক্ষণ দেখা দেয়।

এ ছাড়াও অনেকসময় খাবারে যোগ করা বিভিন্ন প্রিজারভেটিভ, অ্যাডিটিভ ও অন্যান্য রাসায়নিক উপাদানের কারণে অসহনীয়তা হতে পারে। এই ধরনের উপাদানের মধ্যে রয়েছে—

টেস্টিং সল্ট বা এমএসজি (মনোসোডিয়াম গ্লুটামেট)
খাদ্যে ব্যবহৃত কৃত্রিম রং, ফ্লেভার, এসেন্স ও প্রিজারভেটিভ
চিনির বিকল্প হিসেবে ব্যবহৃত কৃত্রিম সুইটনার। যেমন: জিরোক্যাল, সুগার ফ্রি, ইক্যুয়াল ও হাক্সল
ক্যাফেইন
অ্যালকোহল
বিভিন্ন জীবাণু কিংবা সেগুলোর থেকে তৈরি বিষাক্ত পদার্থ—এগুলো খাবারকে দূষিত করে
হিস্টামিন নামক একটি রাসায়নিক। এটি মাশরুম, প্রক্রিয়াজাত করা খাবার ও অ্যালকোহলযুক্ত পানীয়তে থাকতে পারে''',style: TextStyle(fontSize: 18),),
              SizedBox(height: 8,),
              Text('''খাদ্যে অসহনীয়তা শনাক্ত করার উপায়--''',style: TextStyle(fontSize: 23,color: Allcolor.pinkcolor),),
              SizedBox(height: 8,),
              Text('''নির্দিষ্ট কোনো খাবারে অসহনীয়তা আছে কি না সেটি নির্ণয়ের সবচেয়ে ভালো উপায় হলো—

রোগীর লক্ষণ ও খাবারের অভ্যাস পর্যবেক্ষণ করা
নির্দিষ্ট কোনো খাবারের সাথে রোগীর লক্ষণের কোনো যোগসূত্র আছে কি না তা খুঁজে বের করা
কোনো খাবার নিয়ে সন্দেহ থাকলে সেটি কিছুদিনের জন্য খাবারের তালিকা থেকে বাদ দিয়ে ফলাফল কী হয় তা দেখুন। এরপর ধীরে ধীরে খাবারটি আবার ডায়েটে যোগ করতে পারেন। এ ছাড়া একটি ডায়েরিতে এসব তথ্য লিখে রাখতে পারেন।

খাবারের ডায়েরি
ডায়েরিতে নিচের ৬টি তথ্য লিখে রাখতে হবে—

কী ধরনের খাবার খাওয়া হচ্ছে
সেসব খাবার খাওয়ার পরে কোনো লক্ষণ দেখা দিচ্ছে কি না
কী ধরনের লক্ষণ দেখা দিচ্ছে
লক্ষণগুলো কোন সময়ে দেখা দিচ্ছে
খাবারটি বাদ দেওয়ার পরে লক্ষণের উন্নতি হচ্ছে কি না
বাদ দেওয়া খাবারটি পুনরায় ডায়েটে যোগ করার পরে লক্ষণ ফিরে আসছে কি না
ট্রায়াল এলিমিনেশন ডায়েট
কোন কোন খাবার খাওয়ার কারণে শরীরে লক্ষণ দেখা দিচ্ছে সেই সম্পর্কে একটা ধারণা তৈরি হওয়ার পরে খাবারগুলো এক এক করে ডায়েট থেকে বাদ দেওয়া যেতে পারে। এই পদ্ধতিকে ‘ট্রায়াল এলিমিনেশন ডায়েট’ বলা হয়।

যেই খাবারটি সহ্য হয় না বলে ধারণা করা হচ্ছে সেটি খাবারের তালিকা থেকে ২–৬ সপ্তাহের জন্য বাদ দিয়ে লক্ষণের কোনো উন্নতি হয় কি না সেটি পর্যবেক্ষণ করতে হবে।


এরপর খাবারটি আবার ডায়েটে যোগ করে লক্ষণগুলো ফিরে আসে কি না সেটি দেখতে হবে। এমনও হতে পারে যে একটি নির্দিষ্ট পরিমাণ পর্যন্ত খাবারটি খেলে কোনো সমস্যা হয় না। কিন্তু সেই পরিমাণের চেয়ে বেশি খেয়ে ফেললেই লক্ষণগুলো দেখা দেয়।

এই পদ্ধতি চলাকালে শরীরে সব পুষ্টি উপাদানের প্রাপ্তি নিশ্চিত করতে একজন পুষ্টিবিদ বা ডায়েটিশিয়ান এর পরামর্শ নিন।''',style: TextStyle(fontSize: 19.0),),
              Container(
                width: double.infinity,
                height:80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Allcolor.light_gray.withOpacity(0.4)
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('''বিশেষ দ্রষ্টব্য: শিশুদের ক্ষেত্রে ডাক্তার অথবা ডায়েটিশিয়ান এর পরামর্শ ছাড়া কখনও কোনো নির্দিষ্ট খাবার খাওয়ানো বন্ধ করবেন না।''',style: TextStyle(color: Allcolor.redcolor,fontSize: 20),),
                )),
              ),
              SizedBox(height: 9,),
              Text("খাদ্যে অসহনীয়তার ঘরোয়া চিকিৎসা--",style: TextStyle(fontSize: 23,color: Allcolor.pinkcolor,fontWeight: FontWeight.bold),),
              SizedBox(height: 9,),
              Text('''কোনো নির্দিষ্ট খাবারে অসহনীয়তার ব্যাপারে নিশ্চিত হলে এটি নিয়ন্ত্রণের একমাত্র উপায় হলো কিছুদিনের জন্য সেই খাবার খাওয়া বন্ধ করে দেওয়া। এরপর একটু একটু করে খাবারটি আবারও ডায়েটে যোগ করতে হবে।

আবার লক্ষণ দেখা দেওয়ার আগ পর্যন্ত সর্বোচ্চ কতটুকু খাবার খাওয়া যায় সেটি পর্যবেক্ষণ করতে হবে। এরপর খাবারটি পুনরায় খাদ্য তালিকায় যোগ করতে হবে।

কী ধরনের খাবার এড়িয়ে চলতে হবে সেটি বোঝার জন্য খাবারের প্যাকেটের লেবেল ভালোভাবে পড়ে দেখার অভ্যাস করতে হবে।

শিশুর খাদ্যে অসহনীয়তার সমস্যা আছে বলে ধারণা করলে শিশুর খাবারের তালিকা থেকে যেকোনো খাবার বাদ দেওয়ার আগে অবশ্যই ডাক্তার অথবা ডায়েটিশিয়ান এর পরামর্শ নিতে হবে।

যেমন, অনেকে শিশুর খাবারের তালিকা থেকে গরুর দুধ বাদ দিয়ে ফেলেন। গরুর দুধ ক্যালসিয়াম, ভিটামিন ডি ও প্রোটিনের খুব ভালো উৎস। তাই শিশুর শরীরে গরুর দুধ সহ্য না হলে ডাক্তারের পরামর্শ নিয়ে বিকল্প উপায়ে প্রয়োজনীয় পুষ্টি উপাদান প্রাপ্তি নিশ্চিত করার পরেই কেবল তা শিশুর খাবারের তালিকা থেকে বাদ দেওয়া যেতে পারে''',style: TextStyle(fontSize: 18),),
              SizedBox(height: 10,),
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Allcolor.light_gray.withOpacity(0.6)
                ),
                child: Center(
                  child: Text('''যখন ডাক্তারের পরামর্শ নেওয়া জরুরি
নিয়ম মেনে খাবার খাওয়ার পরেও অবস্থার কোনো উন্নতি না হলে এবং লক্ষণগুলো বারবার ফিরে আসলে ডাক্তারের পরামর্শ নিতে হবে।

এ ছাড়া শিশুদের ক্ষেত্রে পেটের সমস্যার (যেমন: পেট ব্যথা ও ডায়রিয়ার) সাথে যদি নিচের কোনো লক্ষণ থাকে তাহলে বিশেষজ্ঞ ডাক্তারের পরামর্শ নেওয়া জরুরি—

শিশু ঠিকমতো বেড়ে উঠছে না বলে মনে হলে
নিয়ম মেনে খাবার খাওয়ার পরেও অবস্থার কোনো উন্নতি না হলে
কোনো খাবার খাওয়ার পর হঠাৎ করে খারাপ প্রতিক্রিয়া হলে
কোনো খাবারে অ্যালার্জি আছে বলে মনে করলে''',style: TextStyle(fontSize: 20,color: Allcolor.blackcolor,fontWeight: FontWeight.bold),),
                ),
              )
          ],),
        ),
      ),
    );
  }
}
