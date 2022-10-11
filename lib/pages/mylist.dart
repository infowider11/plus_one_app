import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constants/colors.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/constants/image_urls.dart';
import 'package:oneplus/constants/sized_box.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/edit_profile.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/appbar.dart';
import 'package:oneplus/widgets/avatar.dart';
import 'package:oneplus/widgets/buttons.dart';

class Mylist_Page extends StatefulWidget {
  const Mylist_Page({Key? key}) : super(key: key);

  @override
  State<Mylist_Page> createState() => _Mylist_PageState();
}
bool post = true;
bool list = false;
class _Mylist_PageState extends State<Mylist_Page> {
  List image=[
    MyImages.avtarone,
    MyImages.avatr8,
    MyImages.avatr3,
    MyImages.avatr4,
    MyImages.avatr5,
    MyImages.avatr6,
  ];

  List<String> name=[
    'Hary',
    'Ronaldo',
    'Jacky',
    'Ryder',
    'Solomen',
    'Hary',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: appBar(
        titlecenter: false,
        context: context,
        title: 'My +1 List',
        titleColor: MyColors.paragraphcolor,
        appBarColor: MyColors.primaryColor.withOpacity(0.8),
        
        actions: [
          if(list)
          IconButton(
              onPressed: (){
                showCustomDialogBox(
                    context: context,
                    marginhorizontal: 20,
                    background: MyColors.popupbackground,
                    child: Column(
                      children: [
                        MainHeadingText(text: 'Delete', fontSize: 20,),
                        vSizedBox,
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(16),
                          color: MyColors.white,
                          child: Center(
                            child: ParagraphText(
                              text: 'Are you sure to delete?',
                              fontFamily: 'italic',
                              color: MyColors.bordercolor,
                            ),
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
              icon: Icon(Icons.delete_forever_outlined, color: MyColors.black,)
          )
        ]
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vSizedBox4,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState((){
                            post = true;
                            list = false;
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ParagraphText(
                              text: 'My +1 List',
                              fontSize: 20,
                              fontFamily: 'bold',
                              color: post?MyColors.black: Color(0xFF959292),
                              height: 0.8,
                            ),
                            hSizedBox05,
                            Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: post? MyColors.primaryColor: Color(0xff959292)
                              ),
                              child: Center(
                                child: ParagraphText(
                                  text: '3',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      hSizedBox2,
                      GestureDetector(
                        onTap: (){
                          setState((){
                            post = false;
                            list = true;
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ParagraphText(
                              text: 'Requests',
                              fontSize: 20,
                              fontFamily: 'bold',
                              color: list?MyColors.black: Color(0xFF959292),
                              height: 0.8,
                            ),
                            hSizedBox05,
                            Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: list?MyColors.primaryColor:Color(0xff959292)
                              ),
                              child: Center(
                                child: ParagraphText(
                                  text: '5',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  vSizedBox2,
                    // if(post)
                    // Wrap(
                    //   spacing: 0,
                    //   runSpacing: 15,
                    //   // runAlignment: WrapAlignment.spaceBetween,
                    //   // alignment: WrapAlignment.spaceBetween,
                    //   children: [
                    //     for(var i=0; i<6; i++)
                    //       Container(
                    //         width: MediaQuery.of(context).size.width / 3.33,
                    //         child: Column(
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    //             GestureDetector(
                    //               child: CircleAvatarcustom(
                    //                 image: image[i],
                    //                 height: 100,
                    //                 width: 100,
                    //                 borderradius: 60,
                    //                 bordercolor: MyColors.bordercolor,
                    //               ),
                    //
                    //               onTap: (){
                    //                 showCustomDialogBox(
                    //                   background: MyColors.primaryColor,
                    //                     bottom: 0,
                    //                     context: context,
                    //                     child: Column(
                    //                       children: [
                    //                         Row(
                    //                           children: [
                    //                             CircleAvatarcustom(
                    //                               image: image[i],
                    //                               isshadow: true,
                    //                               height: 120,
                    //                               width: 120,
                    //                               borderradius: 110,
                    //                             ),
                    //                             hSizedBox,
                    //                             Expanded(
                    //                               child: Column(
                    //                                 crossAxisAlignment: CrossAxisAlignment.start,
                    //                                 children: [
                    //                                   ParagraphText(
                    //                                     text: 'Ryder',
                    //                                     color: MyColors.white,
                    //                                     fontSize: 28,
                    //                                     fontFamily: 'semibold',
                    //                                   ),
                    //                                   ParagraphText(
                    //                                     text: '28 years',
                    //                                     color: MyColors.white,
                    //                                     fontSize: 20,
                    //                                     fontFamily: 'semibold',
                    //                                   ),
                    //                                 ],
                    //                               ),
                    //                             ),
                    //                           ],
                    //                         ),
                    //                         vSizedBox,
                    //                         Container(
                    //
                    //                           decoration: BoxDecoration(
                    //                             borderRadius: BorderRadius.only(
                    //                               topLeft: Radius.circular(16),
                    //                               topRight: Radius.circular(16),
                    //                             ),
                    //                             color: MyColors.white
                    //                           ),
                    //                           padding: EdgeInsets.only(left:10, right: 10, top: 10, bottom: 20),
                    //                           child: Row(
                    //                             children: [
                    //                               Expanded(
                    //                                   child: Column(
                    //                                     children: [
                    //                                       Image.asset(MyImages.message, height: 30,),
                    //                                       vSizedBox,
                    //                                       ParagraphText(text: 'Send Message', fontSize: 9, color: MyColors.primaryColor,)
                    //                                     ],
                    //                                   )
                    //                               ),
                    //                               Expanded(
                    //                                   child: Column(
                    //                                     children: [
                    //                                       Image.asset(MyImages.block, height: 30,),
                    //                                       vSizedBox,
                    //                                       ParagraphText(text: 'Block',fontSize: 9, color: MyColors.primaryColor,)
                    //                                     ],
                    //                                   )
                    //                               ),
                    //                               Expanded(
                    //                                   child: Column(
                    //                                     children: [
                    //                                       Image.asset(MyImages.remove, height: 30,),
                    //                                       vSizedBox,
                    //                                       ParagraphText(text: 'Remove from List',fontSize: 9, color: MyColors.primaryColor,)
                    //                                     ],
                    //                                   )
                    //                               ),
                    //                               Expanded(
                    //                                   child: Column(
                    //                                     children: [
                    //                                       Image.asset(MyImages.addfriend, height: 30,),
                    //                                       vSizedBox,
                    //                                       ParagraphText(text: 'Request to be\n on his +1 List',fontSize: 9, color: MyColors.primaryColor,)
                    //                                     ],
                    //                                   )
                    //                               ),
                    //                             ],
                    //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //                           ),
                    //                         ),
                    //                       ],
                    //                     )
                    //                 );
                    //               },
                    //             ),
                    //             vSizedBox05,
                    //             ParagraphText(text: name[i], fontFamily: 'bold', fontSize: 18,)
                    //           ],
                    //         ),
                    //       ),
                    //   ],
                    // ),
                    // vSizedBox2,

                  if(post)
                    Column(
                      children: [
                        for(var i=0; i<3; i++)
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    child: CircleAvatarcustom(
                                      image: image[i],
                                      height: 65,
                                      width: 65,
                                      borderradius: 60,
                                      bordercolor: MyColors.bordercolor,
                                    ),
                                  ),
                                  hSizedBox2,
                                  ParagraphText(
                                    text: name[i],
                                    fontFamily: 'bold',
                                    fontSize: 18,
                                  ),
                                ],
                              ),
                              IconButton(
                                  onPressed: (){
                                      showCustomDialogBox(
                                          background: MyColors.primaryColor,
                                          bottom: 0,
                                          context: context,
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatarcustom(
                                                    image: image[i],
                                                    isshadow: true,
                                                    height: 120,
                                                    width: 120,
                                                    borderradius: 110,
                                                  ),
                                                  hSizedBox,
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        ParagraphText(
                                                          text: name[i],
                                                          color: MyColors.white,
                                                          fontSize: 28,
                                                          fontFamily: 'semibold',
                                                        ),
                                                        ParagraphText(
                                                          text: '28 years',
                                                          color: MyColors.white,
                                                          fontSize: 20,
                                                          fontFamily: 'semibold',
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              vSizedBox,
                                              Container(

                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(16),
                                                      topRight: Radius.circular(16),
                                                    ),
                                                    color: MyColors.white
                                                ),
                                                padding: EdgeInsets.only(left:10, right: 10, top: 10, bottom: 20),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        child: Column(
                                                          children: [
                                                            Image.asset(MyImages.message, height: 30,),
                                                            vSizedBox,
                                                            ParagraphText(text: 'Send Message', fontSize: 9, color: MyColors.primaryColor,)
                                                          ],
                                                        )
                                                    ),
                                                    Expanded(
                                                        child: Column(
                                                          children: [
                                                            Image.asset(MyImages.block, height: 30,),
                                                            vSizedBox,
                                                            ParagraphText(text: 'Block',fontSize: 9, color: MyColors.primaryColor,)
                                                          ],
                                                        )
                                                    ),
                                                    Expanded(
                                                        child: Column(
                                                          children: [
                                                            Image.asset(MyImages.remove, height: 30,),
                                                            vSizedBox,
                                                            ParagraphText(text: 'Remove from List',fontSize: 9, color: MyColors.primaryColor,)
                                                          ],
                                                        )
                                                    ),
                                                    Expanded(
                                                        child: Column(
                                                          children: [
                                                            Image.asset(MyImages.addfriend, height: 30,),
                                                            vSizedBox,
                                                            ParagraphText(text: 'Request to be\n on his +1 List',fontSize: 9, color: MyColors.primaryColor,)
                                                          ],
                                                        )
                                                    ),
                                                  ],
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                ),
                                              ),
                                            ],
                                          )
                                      );

                                  },
                                  icon: Icon(Icons.more_horiz_outlined, color: Colors.black, size: 30,)
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    if(list)
                    for(var i=0; i<5; i++)
                    Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatarcustom(
                              image: image[i],
                              isshadow: true,
                            ),
                            hSizedBox,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ParagraphText(text: name[i], color: MyColors.paragraphcolor, fontSize: 20, fontFamily: 'semibold',),
                                  vSizedBox05,
                                  Row(
                                    children: [
                                      Expanded(
                                          child: RoundEdgedButton(
                                              text: 'Accept',
                                            height: 30,
                                            fontSize: 15,
                                            verticalPadding: 0,
                                            bordercolor: MyColors.bordercolor,
                                          )
                                      ),
                                      hSizedBox05,
                                      Expanded(
                                          child: RoundEdgedButton(
                                              text: 'Decline',
                                            verticalPadding: 0,
                                            height: 30,
                                            fontSize: 15,
                                            color: MyColors.paragraphcolor.withOpacity(0.2),
                                            bordercolor: MyColors.bordercolor,

                                          )
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        vSizedBox,
                      ],
                    ),


                  vSizedBox4
                ],
              ),
            ),

      ),


        ],
      ),

    );
  }
}
