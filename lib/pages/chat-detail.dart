import 'package:flutter/material.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/widgets/appbar.dart';
import 'package:oneplus/widgets/custom_widgets.dart';

import '../constants/colors.dart';
import '../constants/image_urls.dart';
import '../constants/sized_box.dart';
import '../widgets/CustomTexts.dart';

class SingleChat extends StatefulWidget {
  const SingleChat({Key? key}) : super(key: key);

  @override
  State<SingleChat> createState() => _SingleChatState();
}

class _SingleChatState extends State<SingleChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          context: context,
          title: 'Jolie',
          titleColor: MyColors.black,
          titlecenter: false,
          actions: [

            GestureDetector(
                onTap: (){
                  // push(context: context, screen: Notifications_Page());
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/event-line.png', height: 24,),
                  ],
                )
            ),
            hSizedBox2,
            GestureDetector(
                onTap: (){
                  // push(context: context, screen: Notifications_Page());
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(MyImages.video_camera, height: 24,),
                  ],
                )
            ),
            hSizedBox2,
            GestureDetector(
                onTap: (){},
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(MyImages.phone, height: 24,),
                  ],
                )
            ),
            hSizedBox,
            PopupmenuButtonCustom(

            )
          ]
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 50,
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vSizedBox2,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MainHeadingText(text: 'You', fontSize: 10, color: MyColors.headingcolor,),
                      vSizedBox05,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MainHeadingText(text: '3:06 PM', fontSize: 10, color: MyColors.bordercolor),
                          hSizedBox,
                          Container(
                            padding: EdgeInsets.only(top: 10, left: 16, bottom: 10, right: 60),
                            decoration: BoxDecoration(
                              color: MyColors.fadeprimary,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                              )
                            ),
                            child: ParagraphText(
                                text: 'Hii How are you?',
                                fontSize: 16,
                                color: MyColors.headingcolor
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  vSizedBox,
                  // for(var i = 0; i < 10; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MainHeadingText(text: 'You', fontSize: 10, color: MyColors.headingcolor,),
                      vSizedBox05,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MainHeadingText(text: '3:06 PM', fontSize: 10, color: MyColors.bordercolor),
                          hSizedBox,
                          Container(
                            padding: EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 10),
                            decoration: BoxDecoration(
                                color: MyColors.fadeprimary,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                )
                            ),
                            child: Center(
                                child: Image.asset('assets/images/08.jpg',
                                  fit: BoxFit.cover,
                                  height: 150,

                                )),
                          ),
                        ],
                      ),
                    ],
                  ),

                  vSizedBox,

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MainHeadingText(text: 'Jolie', fontSize: 10, color: MyColors.headingcolor,),
                      vSizedBox05,
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10, left: 16, bottom: 10, right: 60),
                            decoration: BoxDecoration(
                                color: MyColors.bordercolor.withOpacity(0.8),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                )
                            ),
                            child: ParagraphText(text: 'Hii, Nice to Match u!!', fontSize: 16, color: MyColors.white),
                          ),
                          hSizedBox,
                          MainHeadingText(text: '3:06 PM', fontSize: 10, color: Colors.black.withOpacity(0.5)),
                        ],
                      ),
                    ],
                  ),



                  vSizedBox6
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  clipBehavior: Clip.none,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: MyColors.fadeprimary.withOpacity(0.7),
                        boxShadow: [shadow]
                    ),
                    child: TextField(
                      clipBehavior: Clip.none,
                      style: TextStyle(color: MyColors.secondarycolor),
                      decoration: InputDecoration(
                          prefixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // added line
                            mainAxisSize: MainAxisSize.min, // added
                            children: [IconButton(
                                onPressed: (){},
                                icon: Image.asset('assets/images/smile.png')
                            ),]
                          ),
                          suffixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // added line
                            mainAxisSize: MainAxisSize.min, // added line
                            children: [
                              IconButton(
                                onPressed: (){},
                                icon: Image.asset('assets/images/camera.png', width: 25,)
                              ),
                              IconButton(
                                  onPressed: (){},
                                  icon: Image.asset('assets/images/attachment.png', width: 25,)
                              ),
                              IconButton(
                                  onPressed: (){},
                                  icon: Image.asset('assets/images/send.png', width: 25,)
                              ),
                            ],
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent, width: 1),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Enter message...',
                          hintStyle: TextStyle(
                              fontSize: 14, color: MyColors.headingcolor)
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
