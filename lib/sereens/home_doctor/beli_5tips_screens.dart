import 'package:bmi_calculator/component/allcolor.dart';
import 'package:flutter/material.dart';

class Beli5tipsScreens extends StatelessWidget {
  const Beli5tipsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Allcolor.redcolor,
        centerTitle: true,
        title: Text(
          "পেট সুস্থ রাখার পাঁচটি ঘরোয়া উপায়",
          style: TextStyle(
            fontSize: 21,
            color: Allcolor.blackcolor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 2, top: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SelectableText(
                "পেট সুস্থ রাখার পাঁচটি ঘরোয়া উপায় । ",
                style: TextStyle(
                  color: Allcolor.pinkcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              SizedBox(height: 5),
              SelectableText(
                "দৈনন্দিন জীবনে পাঁচটি সহজ পরিবর্তন আনার মাধ্যমে পেটকে সুস্থ রাখুন--",
                style: TextStyle(
                  fontSize: 20,
                  color: Allcolor.light_gray,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              SelectableText(
                '''হজমের সমস্যা, পেট খারাপ হওয়া কিংবা পেটের অস্বস্তি—প্রায় সবাই জীবনে কখনো না কখনো এই ধরনের সমস্যার সম্মুখীন হয়ে থাকেন। কেউ কেউ আবার প্রায়ই পেটের বিভিন্ন সমস্যায় কষ্ট পান।

জীবনধারায় কিছু পরিবর্তন এনে এসব সমস্যা প্রতিরোধ করা যায়। এমনকি এভাবে পূর্ণ নিরাময় এবং পেটের সমস্যা থেকে চিরতরে মুক্তি পাওয়া সম্ভব। এই আর্টিকেলে এমন পাঁচটি সহজ পরিবর্তন আনার উপায় তুলে ধরা হয়েছে।''',
                style: TextStyle(fontSize: 18),
              ),
          
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Container(
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Allcolor.light_gray.withOpacity(0.4),
                  ),
                  child: Center(
                    child: SelectableText(
                      '''পরিচ্ছেদসমূহ--

১ মানসিক চাপকে হার মানাতে হবে
২ বুক জ্বালাপোড়া ও গ্যাস্ট্রিক ঠেকাতে ধূমপান ছাড়তে হবে
৩ নিয়মমতো খাওয়াদাওয়া করতে হবে
৪ অতিরিক্ত ওজন ও পেটের মেদ কমিয়ে ফেলতে হবে
৫ মদপান থেকে বিরত থাকতে হবে''',
                      style: TextStyle(
                        fontSize: 20,
                        color: Allcolor.blackcolor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
          
              
            ],
          ),
        ),
      ),
    );
  }
}
