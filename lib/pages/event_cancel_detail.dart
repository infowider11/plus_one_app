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
import 'package:oneplus/widgets/customtextfield.dart';

class Event_Cancel_Detail_Page extends StatefulWidget {
  const Event_Cancel_Detail_Page({Key? key}) : super(key: key);

  @override
  State<Event_Cancel_Detail_Page> createState() => _Event_Cancel_Detail_PageState();
}
bool post = true;
bool list = false;
class _Event_Cancel_Detail_PageState extends State<Event_Cancel_Detail_Page> {
  TextEditingController reason = TextEditingController();
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
          context: context,
          title: 'Lofi\'s Marriage Party',
          fontfamily: 'semibold',
          titleColor: MyColors.paragraphcolor,
          appBarColor: MyColors.primaryColor.withOpacity(0.8),
          leading: Icon(Icons.menu, color: MyColors.black,),
          actions: [
            GestureDetector(
                onTap: (){
                    showCustomDialogBox(context: context,
                        marginhorizontal: 20,
                        background: MyColors.popupbackground,
                        child: Column(
                          children: [
                            MainHeadingText(text: 'Reason For Cancellation', fontSize: 20,),
                            vSizedBox2,
                            // Container(
                            //   padding: EdgeInsets.all(16),
                            //   color: MyColors.white,
                            //   child: ParagraphText(
                            //     text: 'Your request to add Jolie to your +1 List has been sent',
                            //   ),
                            // ),
                            CustomTextField(
                                controller: reason,
                                hintText: 'Due to an...',
                               maxLines: 6,
                              borderradius: 0,
                              bordercolor: Colors.transparent,
                            ),
                            vSizedBox2,
                            RoundEdgedButton(
                              text: 'Submit',
                              fontSize: 14,
                              verticalPadding: 0,
                              horizontalPadding: 5,
                              borderRadius: 10,
                              height: 40,
                              minWidth: 100,
                              onTap: (){
                                Navigator.pop(context);
                              },
                            )

                          ],
                        )
                    );
                },
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(MyImages.cancel_circle, height: 30,),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    child: Container(
                      width: width(context),
                      decoration: BoxDecoration(
                        color: MyColors.popupbackground,
                        boxShadow: [
                          shadow
                        ],
                        border: Border.all(color: MyColors.black)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          vSizedBox,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: MainHeadingText(
                                text: 'Happy New Year Party',
                            ),
                          ),
                          vSizedBox05,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: ParagraphText(
                              text: 'ADELIDE, NERMAN CHURCH, 123, CALIFORNIA',
                              color: MyColors.paragraphcolor,
                              fontSize: 12,
                            ),
                          ),
                          vSizedBox,

                        ],
                      ),
                    ),
                  ),
                  vSizedBox,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: ParagraphText(
                        text: 'Hello, I am looking for someone in State of California to have new year party with me',
                         fontSize: 14,
                    ),
                  ),
                  vSizedBox2,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
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
                  ),
                  vSizedBox2,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
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
                  ),
                ],
              ),
            ),
      ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Padding(
          //     padding: const EdgeInsets.all(24.0),
          //     child: RoundEdgedButton(
          //       borderRadius: 16,
          //         fontSize: 17,
          //         text: 'Yes I\'m interested - Tell me More',
          //       onTap: (){
          //         showCustomDialogBox(context: context,
          //             marginhorizontal: 20,
          //             background: MyColors.popupbackground,
          //             child: Column(
          //               children: [
          //                  MainHeadingText(text: '+1', fontSize: 40,),
          //                 vSizedBox,
          //                 Container(
          //                   padding: EdgeInsets.all(16),
          //                   color: MyColors.white,
          //                   child: ParagraphText(
          //                     text: 'Your request to add Jolie to your +1 List has been sent',
          //                   ),
          //                 ),
          //                 vSizedBox2,
          //                 Padding(
          //                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
          //                   child: Row(
          //                     children: [
          //                       Expanded(
          //                           child: RoundEdgedButton(
          //                             text: 'Ok',
          //                             fontSize: 14,
          //                             verticalPadding: 0,
          //                             horizontalPadding: 5,
          //                             borderRadius: 10,
          //                             height: 40,
          //                           )
          //                       ),
          //                       hSizedBox,
          //                       Expanded(
          //                           child: RoundEdgedButton(
          //                             text: 'Undo',
          //                             fontSize: 14,
          //                             verticalPadding: 0,
          //                             horizontalPadding: 5,
          //                             borderRadius: 10,
          //                             height: 40,
          //                             color: MyColors.secondarycolor,
          //                             textColor: MyColors.white,
          //                           )
          //                       ),
          //                     ],
          //                   ),
          //                 )
          //
          //               ],
          //             )
          //         );
          //       },
          //     ),
          //   ),
          // )


        ],
      ),

    );
  }
}
