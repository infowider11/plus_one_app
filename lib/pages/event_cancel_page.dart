import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constants/colors.dart';
import 'package:oneplus/constants/image_urls.dart';
import 'package:oneplus/constants/sized_box.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/event_cancel_detail.dart';
import 'package:oneplus/pages/event_recover_page.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/appbar.dart';

class Event_Cancel_Page extends StatefulWidget {
  const Event_Cancel_Page({Key? key}) : super(key: key);

  @override
  State<Event_Cancel_Page> createState() => _Event_Cancel_PageState();
}

class _Event_Cancel_PageState extends State<Event_Cancel_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          context: context,
          appBarColor: MyColors.fadeprimary,
          titleColor: MyColors.black,
          title: 'Cancelled Calender',
          titlecenter: false,
          actions: [
            TextButton(
                onPressed: (){},
                child: ParagraphText(
                  text: 'Clear',
                  fontSize: 16,
                )
            )
          ]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: MyColors.black),
                  top: BorderSide(color: MyColors.black),
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
                            text: 'Events cancelled by you',
                            color: MyColors.white,
                            fontSize: 12,
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
                            text: 'Events cancelled by invitees',
                            color: MyColors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    top: 0,
                    left: 84.5,
                    child: Container(
                      color: MyColors.black,
                      width: 0.8,
                      height: MediaQuery.of(context).size.height,
                    )
                ),
                Container(
                  child: Column(
                    children: [
                      vSizedBox2,
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 16),
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    ParagraphText(text: '01', fontSize: 38, fontFamily: 'bold',),
                                    ParagraphText(text: 'MON', fontSize: 16, height: 0.5,)
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                ),
                                hSizedBox05,
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: MyColors.white,
                                      border: Border.all(color: MyColors.black),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    push(context: context, screen: Event_Recover_Page());
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: MyColors.primaryColor
                                    ),
                                    margin: EdgeInsets.symmetric(horizontal: 16),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            ParagraphText(text: 'Lofi\'s Marriage Party',
                                              fontSize: 22,
                                              color: MyColors.white,
                                            ),
                                            Image.asset(MyImages.wedding, height: 30,)
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                vSizedBox,
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: MyColors.bordercolor
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ParagraphText(text: 'Cydra\'s Invitation ',
                                            fontSize: 22,
                                            color: MyColors.white,
                                          ),
                                          Image.asset(MyImages.birthday, height: 30,)
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      vSizedBox2,
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 16),
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    ParagraphText(text: '02', fontSize: 38, fontFamily: 'bold',),
                                    ParagraphText(text: 'TUE', fontSize: 16, height: 0.5,)
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                ),
                                hSizedBox05,
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: MyColors.white,
                                      border: Border.all(color: MyColors.black),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: MyColors.primaryColor
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ParagraphText(text: 'Lofi\'s Marriage Party',
                                            fontSize: 22,
                                            color: MyColors.white,
                                          ),
                                          Image.asset(MyImages.wedding, height: 30,)
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                vSizedBox,
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: MyColors.bordercolor
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ParagraphText(text: 'Cydra\'s Invitation ',
                                            fontSize: 22,
                                            color: MyColors.white,
                                          ),
                                          Image.asset(MyImages.birthday, height: 30,)
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      vSizedBox2,
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 16),
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    ParagraphText(text: '03', fontSize: 38, fontFamily: 'bold',),
                                    ParagraphText(text: 'WED', fontSize: 16, height: 0.5,)
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                ),
                                hSizedBox05,
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: MyColors.white,
                                      border: Border.all(color: MyColors.black),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: MyColors.primaryColor
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ParagraphText(text: 'Lofi\'s Marriage Party',
                                            fontSize: 22,
                                            color: MyColors.white,
                                          ),
                                          Image.asset(MyImages.wedding, height: 30,)
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                vSizedBox,
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: MyColors.bordercolor
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ParagraphText(text: 'Cydra\'s Invitation ',
                                            fontSize: 22,
                                            color: MyColors.white,
                                          ),
                                          Image.asset(MyImages.birthday, height: 30,)
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      vSizedBox2,
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 16),
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    ParagraphText(text: '04', fontSize: 38, fontFamily: 'bold',),
                                    ParagraphText(text: 'THU', fontSize: 16, height: 0.5,)
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                ),
                                hSizedBox05,
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: MyColors.white,
                                      border: Border.all(color: MyColors.black),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: MyColors.primaryColor
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ParagraphText(text: 'Lofi\'s Marriage Party',
                                            fontSize: 22,
                                            color: MyColors.white,
                                          ),
                                          Image.asset(MyImages.wedding, height: 30,)
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                vSizedBox,
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: MyColors.bordercolor
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ParagraphText(text: 'Cydra\'s Invitation ',
                                            fontSize: 22,
                                            color: MyColors.white,
                                          ),
                                          Image.asset(MyImages.birthday, height: 30,)
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      vSizedBox2,
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 16),
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    ParagraphText(text: '05', fontSize: 38, fontFamily: 'bold',),
                                    ParagraphText(text: 'FRI', fontSize: 16, height: 0.5,)
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                ),
                                hSizedBox05,
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: MyColors.white,
                                      border: Border.all(color: MyColors.black),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: MyColors.primaryColor
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ParagraphText(text: 'Lofi\'s Marriage Party',
                                            fontSize: 22,
                                            color: MyColors.white,
                                          ),
                                          Image.asset(MyImages.wedding, height: 30,)
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                vSizedBox,
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: MyColors.bordercolor
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ParagraphText(text: 'Cydra\'s Invitation ',
                                            fontSize: 22,
                                            color: MyColors.white,
                                          ),
                                          Image.asset(MyImages.birthday, height: 30,)
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ],
                  ),
                ),


              ],
            )
          ],
        )
      ),
    );
  }
}
