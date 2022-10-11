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

bool checked = false;

class Terms_Page extends StatefulWidget {
  const Terms_Page({Key? key}) : super(key: key);

  @override
  State<Terms_Page> createState() => _Terms_PageState();
}

class _Terms_PageState extends State<Terms_Page> {

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
          title: 'Terms & Conditions',
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
                                    color: MyColors.primaryColor,
                                    border: Border(
                                      right: BorderSide(color: MyColors.black),
                                    )
                                ),
                                child: Center(
                                  child: ParagraphText(
                                    text: 'Terms & Conditions',
                                    color: MyColors.white,
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
                                    color: MyColors.white
                                ),
                                child: Center(
                                  child: ParagraphText(
                                    text: 'Privacy Policy',
                                    color: MyColors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    vSizedBox,
                    ParagraphText(
                      text: 'Your Agreement',
                      fontSize: 20,
                      color: MyColors.black,
                      fontFamily: 'bold',
                    ),
                    ParagraphText(
                      text: 'Welcome to plusone.com!',
                      fontSize: 16,
                      color: MyColors.black,
                      fontFamily: 'semibold',
                    ),
                    vSizedBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          ParagraphText(
                            text: 'These terms and conditions outline the rules and regulations for the use of +1\'s Website, located at https://www.plusone.com.',
                            fontSize: 16, fontFamily: 'semibold',
                           textAlign: TextAlign.center,
                          ),
                          vSizedBox,
                          ParagraphText(
                            text: 'By accessing this website we assume you accept these terms and conditions. Do not continue to use plusone.com if you do not agree to take all of the terms and conditions stated on this page.',
                            fontSize: 16, fontFamily: 'semibold',
                            textAlign: TextAlign.center,
                          ),
                          vSizedBox,
                          ParagraphText(
                            text: 'The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: "Client", "You" and "Your" refers to you, the person log on this website and compliant to the Company’s terms and conditions. "The Company", "Ourselves", "We", "Our" and "Us", refers to our Company. "Party", "Parties", or "Us", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.',
                            fontSize: 16, fontFamily: 'semibold',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    vSizedBox2,

                    vSizedBox2,



                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: MyColors.white,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Theme(
                            data: ThemeData(
                              unselectedWidgetColor: MyColors.secondarycolor,
                            ),
                            child: Checkbox(
                              value: checked,
                              activeColor: MyColors.secondarycolor,
                              onChanged: (value){
                                setState((){
                                  checked = !checked;
                                });
                              },
                            )
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: MyColors.black,
                                    fontSize: 16,
                                    fontFamily: 'regular'
                                ),
                                children: [
                                  TextSpan(
                                    text: 'By Clicking, you agree to ',

                                  ),
                                  TextSpan(
                                    text: 'Terms & Conditions ',
                                    style: TextStyle(color: MyColors.primaryColor),
                                  ),
                                ]
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: MyColors.white,
                    padding: EdgeInsets.only(left: 30, right: 30, top: 10,bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: RoundEdgedButton(
                          text: 'Accept',
                              bordercolor: MyColors.bordercolor,
                              height: 35,
                              verticalPadding: 0,
                              fontSize: 15,
                              minWidth: 150,
                        )
                        ),
                        hSizedBox2,
                        Expanded(
                            child: RoundEdgedButton(
                              text: 'Decline',
                              bordercolor: MyColors.bordercolor,
                              height: 35,
                              color: MyColors.popupbackground,
                              verticalPadding: 0,
                              fontSize: 15,
                              minWidth: 150,
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

    );
  }
}
