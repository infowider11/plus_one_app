import 'package:flutter/material.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/constants/image_urls.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/chat-detail.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/appbar.dart';

import '../constants/colors.dart';
import '../constants/sized_box.dart';

class Notifications_Page extends StatefulWidget {
  const Notifications_Page({Key? key}) : super(key: key);

  @override
  State<Notifications_Page> createState() => _Notifications_PageState();
}

class _Notifications_PageState extends State<Notifications_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFEF1F1F1),
      appBar: appBar(
          context: context,
          title: 'Notifications',
          titleColor: MyColors.black,
          titlecenter: false,
          actions: [
            TextButton(
                onPressed: () {},
                child: ParagraphText(
                  text: 'Clear All',
                  fontSize: 16,
                ))
          ]

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vSizedBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ParagraphText(text: 'New', fontSize: 16,),
            ),
            vSizedBox,
            Column(
              children: [
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        color: MyColors.primaryColor
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(100), child: Image.asset('assets/images/01.jpg', width: 65,)),
                            hSizedBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MainHeadingText(text: 'Jordy', fontSize: 18, fontFamily: 'semibold', color: MyColors.headingcolor),
                                vSizedBox05,
                                ParagraphText(text: 'Thats sound good. I get off work around...', fontSize: 12, color: MyColors.paragraphcolor),
                              ],
                            )
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            MainHeadingText(text: '10:37 am', fontSize: 10  , fontFamily: 'medium', color: MyColors.bordercolor),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        color: MyColors.fadeprimary
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: MyColors.white,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              height: 65,
                              width: 65,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(MyImages.reminder,
                                    height: 35,
                                    width: 35,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ),
                            hSizedBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MainHeadingText(text: 'REMINDER!!!', fontSize: 18, fontFamily: 'semibold', color: MyColors.headingcolor),
                                vSizedBox05,
                                ParagraphText(text: 'Thats sound good. I get off work around...', fontSize: 12, color: MyColors.paragraphcolor),
                              ],
                            )
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            MainHeadingText(text: '10:37 am', fontSize: 10  , fontFamily: 'medium', color: MyColors.bordercolor),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        color: MyColors.popupbackground
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(MyImages.avatr8,
                                  width: 65,
                                )
                            ),
                            hSizedBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MainHeadingText(text: 'Jordy', fontSize: 18, fontFamily: 'semibold', color: MyColors.headingcolor),
                                vSizedBox05,
                                ParagraphText(text: 'Thats sound good. I get off work around...', fontSize: 12, color: MyColors.paragraphcolor),
                              ],
                            )
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            MainHeadingText(text: '10:37 am', fontSize: 10  , fontFamily: 'medium', color: MyColors.bordercolor),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            vSizedBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ParagraphText(text: 'Yesterday', fontSize: 16,),
            ),
            vSizedBox,
            Column(
              children: [
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        color: MyColors.primaryColor
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(100), child: Image.asset('assets/images/01.jpg', width: 65,)),
                            hSizedBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MainHeadingText(text: 'Jordy', fontSize: 18, fontFamily: 'semibold', color: MyColors.headingcolor),
                                vSizedBox05,
                                ParagraphText(text: 'Thats sound good. I get off work around...', fontSize: 12, color: MyColors.paragraphcolor),
                              ],
                            )
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            MainHeadingText(text: '10:37 am', fontSize: 10  , fontFamily: 'medium', color: MyColors.bordercolor),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        color: MyColors.fadeprimary
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: MyColors.white,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              height: 65,
                              width: 65,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(MyImages.reminder,
                                    height: 35,
                                    width: 35,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ),
                            hSizedBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MainHeadingText(text: 'REMINDER!!!', fontSize: 18, fontFamily: 'semibold', color: MyColors.headingcolor),
                                vSizedBox05,
                                ParagraphText(text: 'Thats sound good. I get off work around...', fontSize: 12, color: MyColors.paragraphcolor),
                              ],
                            )
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            MainHeadingText(text: '10:37 am', fontSize: 10  , fontFamily: 'medium', color: MyColors.bordercolor),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        color: MyColors.popupbackground
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(MyImages.avatr8,
                                  width: 65,
                                )
                            ),
                            hSizedBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MainHeadingText(text: 'Jordy', fontSize: 18, fontFamily: 'semibold', color: MyColors.headingcolor),
                                vSizedBox05,
                                ParagraphText(text: 'Thats sound good. I get off work around...', fontSize: 12, color: MyColors.paragraphcolor),
                              ],
                            )
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            MainHeadingText(text: '10:37 am', fontSize: 10  , fontFamily: 'medium', color: MyColors.bordercolor),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        color: MyColors.primaryColor
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(100), child: Image.asset('assets/images/01.jpg', width: 65,)),
                            hSizedBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MainHeadingText(text: 'Jordy', fontSize: 18, fontFamily: 'semibold', color: MyColors.headingcolor),
                                vSizedBox05,
                                ParagraphText(text: 'Thats sound good. I get off work around...', fontSize: 12, color: MyColors.paragraphcolor),
                              ],
                            )
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            MainHeadingText(text: '10:37 am', fontSize: 10  , fontFamily: 'medium', color: MyColors.bordercolor),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        color: MyColors.fadeprimary
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: MyColors.white,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              height: 65,
                              width: 65,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(MyImages.reminder,
                                    height: 35,
                                    width: 35,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ),
                            hSizedBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MainHeadingText(text: 'REMINDER!!!', fontSize: 18, fontFamily: 'semibold', color: MyColors.headingcolor),
                                vSizedBox05,
                                ParagraphText(text: 'Thats sound good. I get off work around...', fontSize: 12, color: MyColors.paragraphcolor),
                              ],
                            )
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            MainHeadingText(text: '10:37 am', fontSize: 10  , fontFamily: 'medium', color: MyColors.bordercolor),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        color: MyColors.popupbackground
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(MyImages.avatr8,
                                  width: 65,
                                )
                            ),
                            hSizedBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MainHeadingText(text: 'Jordy', fontSize: 18, fontFamily: 'semibold', color: MyColors.headingcolor),
                                vSizedBox05,
                                ParagraphText(text: 'Thats sound good. I get off work around...', fontSize: 12, color: MyColors.paragraphcolor),
                              ],
                            )
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            MainHeadingText(text: '10:37 am', fontSize: 10  , fontFamily: 'medium', color: MyColors.bordercolor),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
