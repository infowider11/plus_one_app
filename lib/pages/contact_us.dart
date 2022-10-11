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

class Contact_Us_Page extends StatefulWidget {
  const Contact_Us_Page({Key? key}) : super(key: key);

  @override
  State<Contact_Us_Page> createState() => _Contact_Us_PageState();
}

class _Contact_Us_PageState extends State<Contact_Us_Page> {

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
          title: 'Contact Us',
          titleColor: MyColors.paragraphcolor,
          titlecenter: false
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: horizontal_pad,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    vSizedBox6,
                    ParagraphText(
                      text: 'Need Help?',
                      fontSize: 31,
                      color: MyColors.primaryColor,
                      fontFamily: 'semibold',
                    ),
                    vSizedBox,
                    ParagraphText(
                      text: 'Follow us on Social Media',
                      fontSize: 16, fontFamily: 'semibold',),
                    vSizedBox2,
                    Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: MyColors.paragraphcolor)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(MyImages.facebook, height: 35, width: 35, fit: BoxFit.contain,),
                            ],
                          ),
                        ),
                        hSizedBox2,
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: MyColors.paragraphcolor)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(MyImages.instagram, height: 35, width: 35, fit: BoxFit.contain,),
                            ],
                          ),
                        ),
                        hSizedBox2,
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: MyColors.paragraphcolor)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(MyImages.linkedin, height: 35, width: 35, fit: BoxFit.contain,),
                            ],
                          ),
                        ),
                      ],
                    ),
                    vSizedBox2,
                    ParagraphText(
                      text: 'or write to us',
                      fontSize: 16, fontFamily: 'semibold',),
                    vSizedBox2,
                    CustomTextField(
                        controller: email,
                        hintText: 'Name',
                      bgColor: Color(0xFFf6f6f6),
                      bordercolor: Colors.transparent,

                    ),
                    vSizedBox,
                    CustomTextField(
                        controller: email,
                        hintText: 'Subject',
                      bgColor: Color(0xFFf6f6f6),
                      bordercolor: Colors.transparent,

                    ),
                    vSizedBox,
                    CustomTextField(
                        controller: email,
                        hintText: 'Enter your message here....',
                      maxLines: 10,
                      bgColor: Color(0xFFf6f6f6),
                      bordercolor: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child:  Padding(
                padding: const EdgeInsets.all(16.0),
                child: RoundEdgedButton(
                  text: 'Send',
                  isshadow: false,
                  color: MyColors.fadeprimary,
                  minWidth: 140,
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),

    );
  }
}
