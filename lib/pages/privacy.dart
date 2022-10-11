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

class Privacy_Page extends StatefulWidget {
  const Privacy_Page({Key? key}) : super(key: key);

  @override
  State<Privacy_Page> createState() => _Privacy_PageState();
}

class _Privacy_PageState extends State<Privacy_Page> {

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
          title: 'Privacy Policy',
          titleColor: MyColors.paragraphcolor,
          titlecenter: false
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: MyColors.bordercolor),
                            top: BorderSide(color: MyColors.bordercolor),
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: (){

                              },
                              child: Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: MyColors.white,
                                    border: Border(
                                      right: BorderSide(color: MyColors.black),
                                    )
                                ),
                                child: Center(
                                  child: ParagraphText(
                                    text: 'Terms & Conditions',
                                    color: MyColors.paragraphcolor,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: (){

                              },
                              child: Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: MyColors.primaryColor
                                ),
                                child: Center(
                                  child: ParagraphText(
                                    text: 'Privacy Policy',
                                    color: MyColors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    vSizedBox4,
                    Image.asset(MyImages.privacy_img, height: 200,),
                    vSizedBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ParagraphText(
                          text: 'Safe & Secure',
                          fontSize: 30,
                          color: MyColors.black,
                          fontFamily: 'semibold',
                        ),
                      ],
                    ),
                    vSizedBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          ParagraphText(
                            text: 'At plusone.com, accessible from https://www.plusone.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by plusone.com and how we use it.',
                            fontSize: 16, fontFamily: 'semibold',
                            textAlign: TextAlign.center,
                            color: MyColors.bordercolor,
                          ),
                          vSizedBox,
                          ParagraphText(
                            text: 'If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.',
                            fontSize: 16, fontFamily: 'semibold',
                            textAlign: TextAlign.center,
                            color: MyColors.bordercolor,
                          ),
                          vSizedBox,
                          ParagraphText(
                            text: 'This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in plusone.com. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the Free Privacy Policy Generator.',
                            fontSize: 16, fontFamily: 'semibold',
                            textAlign: TextAlign.center,
                            color: MyColors.bordercolor,
                          ),
                          vSizedBox2,
                          ParagraphText(
                            text: 'Consent',
                            fontSize: 20, fontFamily: 'semibold',
                            textAlign: TextAlign.center,

                          ),
                          vSizedBox05,
                          ParagraphText(
                            text: 'By using our website, you hereby consent to our Privacy Policy and agree to its terms.',
                            fontSize: 16, fontFamily: 'semibold',
                            textAlign: TextAlign.center,
                            color: MyColors.bordercolor,
                          ),
                          vSizedBox,
                          ParagraphText(
                            text: 'The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.',
                            fontSize: 16, fontFamily: 'semibold',
                            textAlign: TextAlign.center,
                            color: MyColors.bordercolor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

    );
  }
}
