import 'package:flutter/material.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/chat-detail.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/appbar.dart';

import '../constants/colors.dart';
import '../constants/sized_box.dart';

class ChatDetail extends StatefulWidget {
  const ChatDetail({Key? key}) : super(key: key);

  @override
  State<ChatDetail> createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFEF1F1F1),
      appBar: appBar(context: context, title: 'Chats', titleColor: MyColors.black, titlecenter: false),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
            boxShadow: [shadow]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  push(context: context, screen: SingleChat());
                },
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
                            MainHeadingText(text: 'Jordy Dorkidis', fontSize: 20, fontFamily: 'medium', color: MyColors.headingcolor),
                            vSizedBox05,
                            MainHeadingText(text: 'Thats sound good. I get off work around...', fontSize: 12, color: MyColors.paragraphcolor),
                          ],
                        )
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: MyColors.primaryColor,
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: Center(
                            child: MainHeadingText(text: '3', fontSize: 10, fontFamily: 'medium', color: MyColors.headingcolor),
                          ),
                        ),
                        vSizedBox05,
                        MainHeadingText(text: '10:37 am', fontSize: 10  , fontFamily: 'medium', color: MyColors.bordercolor),
                      ],
                    )
                  ],
                ),
              ),

              vSizedBox2,
              vSizedBox,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(100), child: Image.asset('assets/images/04.jpg', width: 65, )),
                      hSizedBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MainHeadingText(text: 'Lindsey Septimus', fontSize: 20, fontFamily: 'medium', color: MyColors.headingcolor),
                          vSizedBox05,
                          MainHeadingText(text: 'Okay! Got it', fontSize: 12, color: MyColors.paragraphcolor),
                        ],
                      )
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: MyColors.primaryColor,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: MainHeadingText(text: '3', fontSize: 10, fontFamily: 'medium', color: MyColors.headingcolor),
                        ),
                      ),
                      vSizedBox05,
                      MainHeadingText(text: '10:37 am', fontSize: 10  , fontFamily: 'medium', color: MyColors.bordercolor),
                    ],
                  )
                ],
              ),
              vSizedBox2,
              vSizedBox,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(100), child: Image.asset('assets/images/05.jpg', width: 65,)),
                          // Positioned(
                          //   right: 0,
                          //   child: Container(
                          //     width: 12,
                          //     height: 12,
                          //     decoration: BoxDecoration(
                          //         border: Border.all(color: Colors.white, width: 1.5),
                          //         color: Color(0xFE0EE109),
                          //         borderRadius: BorderRadius.circular(100)
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                      hSizedBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MainHeadingText(text: 'Jordy Dorkidis', fontSize: 20, fontFamily: 'medium', color: MyColors.headingcolor),
                          vSizedBox05,
                          MainHeadingText(text: 'Typing...', fontSize: 12, color: MyColors.paragraphcolor),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
