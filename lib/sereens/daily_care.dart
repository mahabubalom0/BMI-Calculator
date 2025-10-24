import 'package:bmi_calculator/component/allIcons.dart';
import 'package:bmi_calculator/component/allcolor.dart';
import 'package:bmi_calculator/component/allsize.dart';
import 'package:flutter/material.dart';

class DailyCare extends StatelessWidget {
  const DailyCare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },

          child: Icon(Allicons.back_fowrad, color: Allcolor.white),
        ),
        backgroundColor: Allcolor.prymaricolor,
        centerTitle: true,
        title: Text(
          "প্রতিদিনের যত্ন",
          style: TextStyle(
            color: Allcolor.white,
            fontSize: Allsize.larger,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //height: MediaQuery.of(context).size.height,
              //width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,

                  colors: [
                    Color(0xff6e5e9d),
                    Color(0xff4a7986),
                    Color(0xff2c3565),
                    Color(0xff8c5353),
                  ],
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(

                          "যে ছয় উপায়ে নিজের যত্ন নেবেন.......",
                          style: TextStyle(
                            fontSize: Allsize.larger,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      SelectableText(
                        selectionColor: Allcolor.pinkcolor.withOpacity(0.5),
                        '''সংসার, সন্তান প্রতিপালন, চাকরি আর নানা দায়িত্বের বেড়াজালে দম ফেলার ফুরসত নেই। কিন্তু এর মাঝেই বেঁচে থাকার রসদ আর অনুষঙ্গ বের করে নিতে হবে। নিজেকে সময় দিতে হবে। নিজের যত্ন নিতে হবে। আপনি যখন নিজেই নিজের জন্য যথেষ্ট হবেন, কেবল তখনই আপনি অন্যের ভালো সঙ্গী হতে পারবেন। মানুষ নিজেই যখন নিজের যত্ন নেয়, নিজের সঙ্গ উপভোগ করে, তখন তার শরীরের মেটাবলিজম সিস্টেম আরও সক্রিয় হয়।  ফলে আপনি সারা দিনে যে খাবার গ্রহণ করেন, সেগুলো সহজেই এনার্জিতে রূপান্তরিত হয়। আর আপনার কর্মক্ষমতা বাড়ে। ‘কি ফর সাকসেস’ অনুসারে জেনে নেওয়া যাক, নিজের যত্নের ছয় ধরন।''',

                        style: TextStyle(
                          fontSize: Allsize.meduam,
                          color: Allcolor.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      SelectableText(

                          selectionColor: Allcolor.pinkcolor.withOpacity(0.5),
                        "১. মানসিক যত্ন....",
                        style: TextStyle(
                          color: Allcolor.textcc,
                          fontSize: Allsize.larger,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      SelectableText(
                        selectionColor: Allcolor.pinkcolor.withOpacity(0.5),
                        "মানসিক যত্নের অধীনে এমন সব কর্মকাণ্ড পড়ে, যেগুলো আপনার মন আর বুদ্ধিমত্তাকে ইতিবাচকভাবে উদ্দীপ্ত করে। এই যেমন বই পড়া, পাজল সমাধান করা, সিনেমা দেখা, ঘুরে বেড়ানো ইত্যাদি।",
                        style: TextStyle(
                          fontSize: Allsize.meduam,
                          color: Allcolor.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      SelectableText(
                        selectionColor: Allcolor.pinkcolor.withOpacity(0.5),
                        "২. আবেগীয় যত্ন...",
                        style: TextStyle(
                          color: Allcolor.textcc,
                          fontSize: Allsize.larger,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      SelectableText(
                        selectionColor: Allcolor.pinkcolor.withOpacity(0.5),
                        "আবেগীয় যত্ন হলো এমন সব কাজ, যেগুলো আপনাকে অন্য কিছুর সঙ্গে অনুভূতি দিয়ে জুড়ে রাখে। এই যেমন ডায়েরি লেখা, গান গাওয়া, থেরাপিস্টের সঙ্গে কথা বলা বা নিজের ভালো লাগে—এমন সৃজনশীল কাজে যুক্ত থাকা, ছবি আঁকা ইত্যাদি।",
                        style: TextStyle(
                          fontSize: Allsize.meduam,
                          color: Allcolor.white,
                        ),
                      ),
                      SizedBox(height: 10),

                      SelectableText(
                        selectionColor: Allcolor.pinkcolor.withOpacity(0.5),
                        "৩. ব্যবহারিক যত্ন...",
                        style: TextStyle(
                          color: Allcolor.textcc,
                          fontSize: Allsize.larger,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      SelectableText(
                        selectionColor: Allcolor.pinkcolor.withOpacity(0.5),
                        "এটি এমন কিছু করা, যা আপনাকে ভবিষ্যতে দুশ্চিন্তা থেকে মুক্তি দেবে। যেমন আয় বুঝে ব্যয়, অর্থ জমানো, পেশাগত দায়িত্ব ঠিকভাবে পালন, প্রতিদিনের খরচ লিখে রাখা, নিজের দক্ষতা বাড়ানোর প্রশিক্ষণ, ক্লাস করা, নিজের ওয়ার্ডরোব গুছিয়ে রাখা ইত্যাদি।",
                        style: TextStyle(
                          fontSize: Allsize.meduam,
                          color: Allcolor.white,
                        ),
                      ),
                      SizedBox(height: 10),

                      SelectableText(
                        selectionColor: Allcolor.pinkcolor.withOpacity(0.5),
                        "৪. শারীরিক যত্ন",
                        style: TextStyle(
                          color: Allcolor.textcc,
                          fontSize: Allsize.larger,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),

                      SelectableText(
                        selectionColor: Allcolor.pinkcolor.withOpacity(0.5),
                        "এটা সবচেয়ে পরিচিত ‘সেলফ কেয়ার’ পদ্ধতি। প্রতিদিন আট ঘণ্টা ঘুমানো, আট গ্লাস পানি খাওয়া, কাজের ফাঁকে ফাঁকে একটু করে হাঁটা, ঘুমানোর আগে চুলটা বেঁধে ঘুমানো, সকালের রোদে অন্তত ১০ মিনিট থাকা ইত্যাদি।",
                        style: TextStyle(
                          fontSize: Allsize.meduam,
                          color: Allcolor.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      SelectableText(
                        selectionColor: Allcolor.pinkcolor.withOpacity(0.5),
                        "৫. সামাজিক যত্ন",
                        style: TextStyle(
                          color: Allcolor.textcc,
                          fontSize: Allsize.larger,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      SelectableText(
                        selectionColor: Allcolor.pinkcolor.withOpacity(0.5),
                        "নিজেকে সামাজিকভাবে জুড়ে রাখা, যা আপনাকে শক্তি দেয়, স্বাচ্ছন্দ্যে রাখে, ভার কমায়, আবেগীয় ভারসাম্য নিশ্চিত করতে সাহায্য করে। এই যেমন বন্ধুবান্ধবের সঙ্গে আড্ডা দেওয়া, সকালে দল বেঁধে জগিং, পরিবার ও আত্মীয়স্বজনের সঙ্গে ফোনে যোগাযোগ রাখা ইত্যাদি।",
                        style: TextStyle(
                          fontSize: Allsize.meduam,
                          color: Allcolor.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      SelectableText(
                        selectionColor: Allcolor.pinkcolor.withOpacity(0.5),
                        "৬. আত্মিক যত্ন",
                        style: TextStyle(
                          color: Allcolor.textcc,
                          fontSize: Allsize.larger,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25.0),
                        child: SelectableText(
                          selectionColor: Allcolor.pinkcolor.withOpacity(0.5),
                          "এমন সব কর্মকাণ্ড, যা আপনার চিন্তার গণ্ডিকে ক্রমশ বড় করে। যোগব্যায়াম, প্রকৃতির সংস্পর্শে থাকা, মেডিটেশন, নিজের সঙ্গে যোগাযোগ করা, আত্মোপলব্ধিমূলক কর্মকাণ্ড ইত্যাদি।",
                          style: TextStyle(
                            fontSize: Allsize.meduam,
                            color: Allcolor.white,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
