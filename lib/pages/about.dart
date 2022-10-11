import 'package:flutter/material.dart';
import 'package:oneplus/constants/colors.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/profile.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/appbar.dart';
import 'package:oneplus/widgets/avatar.dart';
import 'package:oneplus/widgets/customtextfield.dart';

import '../constants/image_urls.dart';
import '../constants/sized_box.dart';
import '../widgets/buttons.dart';

class About_Us_Page extends StatefulWidget {
  const About_Us_Page({Key? key}) : super(key: key);

  @override
  State<About_Us_Page> createState() => _About_Us_PageState();
}

class _About_Us_PageState extends State<About_Us_Page> {

  final List text = [
    'Female',
    'Male',
    'Undefined',
  ];
  int _selectedIndex = 0;
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.white,
        appBar: appBar(
            context: context,
            appBarColor: MyColors.fadeprimary,
          title: 'About',
          titleColor: MyColors.paragraphcolor,
          titlecenter: false
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          MyImages.welcome_back,
                        ),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topLeft,
                      opacity: 0.4
                    )
                ),
                padding: horizontal_pad,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    vSizedBox4,
                    Image.asset(MyImages.about_plusone, height: 150,),
                    vSizedBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ParagraphText(
                          text: 'One',
                          fontSize: 40,
                          color: MyColors.black,
                          fontFamily: 'semibold',
                        ),
                        ParagraphText(
                          text: 'PLUS',
                          fontSize: 40,
                          color: MyColors.black,
                          fontFamily: 'bold',
                        ),
                      ],
                    ),
                    vSizedBox,
                    ParagraphText(
                      text: 'Here you can write anything about app. its features, purpose of the app and who are the end users. what this app benefits for nd all that Here you can write anything about app. its features, purpose of the app and who are the end users. what this app benefits for nd all that Here you can write anything about app. its features, purpose of the app and who are the end users. what this app benefits for nd all that',
                      fontSize: 16, fontFamily: 'semibold',
                     textAlign: TextAlign.center,
                    ),
                    vSizedBox2,
                    Image.asset(MyImages.about_bottom, height: 200,),
                    vSizedBox,
                  ],
                ),
              ),
            ),
          ],
        ),

    );
  }
}
