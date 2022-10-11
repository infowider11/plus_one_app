import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constants/colors.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/constants/image_urls.dart';
import 'package:oneplus/constants/sized_box.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/create_new_post_page.dart';
import 'package:oneplus/pages/edit_profile.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/appbar.dart';
import 'package:oneplus/widgets/avatar.dart';
import 'package:oneplus/widgets/buttons.dart';

class Post_Single_View_Page extends StatefulWidget {
  const Post_Single_View_Page({Key? key}) : super(key: key);

  @override
  State<Post_Single_View_Page> createState() => _Post_Single_View_PageState();
}
bool post = true;
bool list = false;
class _Post_Single_View_PageState extends State<Post_Single_View_Page> {
  List image=[
    MyImages.avtarone,
    MyImages.avatr8,
    MyImages.avatr3,
    MyImages.avatr4,
    MyImages.avatr5,
    MyImages.avatr6,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: appBar(
          titlecenter: false,
          implyLeading: false,
          context: context,
          title: 'OnePlus+',
          fontsize: 30,
          fontfamily: 'semibold',
          titleColor: MyColors.paragraphcolor,
          appBarColor: MyColors.primaryColor.withOpacity(0.8),
          leading: Icon(Icons.menu, color: MyColors.black,),
          actions: [
            GestureDetector(
                onTap: (){
                  // push(context: context, screen: Create_New_Post_Page());
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(MyImages.notification, height: 28,),
                  ],
                )
            ),
            hSizedBox,
            hSizedBox05,
            GestureDetector(
                onTap: (){
                  // push(context: context, screen: Create_New_Post_Page());
                },
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(MyImages.useravatar, height: 30,),
                  ],
                )
            ),
            hSizedBox,
          ]
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vSizedBox,
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      width: width(context),
                      decoration: BoxDecoration(
                        color: MyColors.white,
                        boxShadow: [
                          shadow
                        ]
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(MyImages.post, height: 250, fit: BoxFit.fitHeight,)
                              ],
                            ),
                          ),
                          Positioned(
                            top: 8,
                              right:-8,
                              child: GestureDetector(
                                onTap: (){
                                  // push(context: context, screen: Edit_Post_Single_View_Page());
                                },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      MyImages.add_user, height: 24,),
                                  )
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                  vSizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MainHeadingText(
                        text: 'Jolie',fontSize: 20,fontFamily: 'semibold',
                      ),
                      hSizedBox05,
                      Image.asset(MyImages.maleoutline, height: 20,)
                    ],
                  ),
                  vSizedBox,
                  ParagraphText(
                      text: 'Going to New Year Party',
                       fontSize: 16,
                    color: MyColors.primaryColor,
                  ),
                  vSizedBox,
                  ParagraphText(
                      text: 'Hello, I am looking for someone in State of California to have new year party with me',
                       fontSize: 14,
                  ),
                  vSizedBox2,
                  Row(
                    children: [
                      Image.asset(MyImages.clock, height: 20,),
                      hSizedBox,
                      Column(
                        children: [
                          ParagraphText(
                            text: 'Tomorrow',
                            fontSize: 14,
                            color: MyColors.bordercolor,
                          ),
                          ParagraphText(
                            text: '12:00 - 04:00',
                            fontSize: 10,
                            color: MyColors.bordercolor,
                          ),
                        ],
                      )
                    ],
                  ),
                  vSizedBox2,
                  Row(
                    children: [
                      Image.asset(MyImages.location, height: 20,),
                      hSizedBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ParagraphText(
                            text: 'Alberta Church',
                            fontSize: 14,
                            color: MyColors.bordercolor,
                          ),
                          ParagraphText(
                            text: 'Adelide, Nerman Church, 123, California',
                            fontSize: 10,
                            color: MyColors.bordercolor,
                          ),
                        ],
                      )
                    ],
                  ),
                  vSizedBox2,
                  Row(
                    children: [
                      Image.asset(MyImages.location_view, height: 20,),
                      hSizedBox,
                      Column(
                        children: [
                          ParagraphText(
                            text: 'click to view on map',
                            fontSize: 14,
                            color: MyColors.primaryColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
      ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: RoundEdgedButton(
                borderRadius: 16,
                  fontSize: 17,
                  text: 'Yes I\'m interested - Tell me More',
                onTap: (){
                  showCustomDialogBox(
                      context: context,
                      marginhorizontal: 20,
                      background: MyColors.popupbackground,
                      child: Column(
                        children: [
                           MainHeadingText(text: '+1', fontSize: 40,),
                          vSizedBox,
                          Container(
                            padding: EdgeInsets.all(16),
                            color: MyColors.white,
                            child: ParagraphText(
                              text: 'Your request to add Jolie to your +1 List has been sent',
                            ),
                          ),
                          vSizedBox2,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Row(
                              children: [
                                Expanded(
                                    child: RoundEdgedButton(
                                      text: 'Ok',
                                      fontSize: 14,
                                      verticalPadding: 0,
                                      horizontalPadding: 5,
                                      borderRadius: 10,
                                      height: 40,
                                    )
                                ),
                                hSizedBox,
                                Expanded(
                                    child: RoundEdgedButton(
                                      text: 'Undo',
                                      fontSize: 14,
                                      verticalPadding: 0,
                                      horizontalPadding: 5,
                                      borderRadius: 10,
                                      height: 40,
                                      color: MyColors.secondarycolor,
                                      textColor: MyColors.white,
                                    )
                                ),
                              ],
                            ),
                          )

                        ],
                      )
                  );
                },
              ),
            ),
          )


        ],
      ),

    );
  }
}
