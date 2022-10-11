import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constants/colors.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/constants/image_urls.dart';
import 'package:oneplus/constants/sized_box.dart';
import 'package:oneplus/functions/global_Var.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/edit_profile.dart';
import 'package:oneplus/pages/profile_view_from_posts.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/appbar.dart';
import 'package:oneplus/widgets/avatar.dart';
import 'package:oneplus/widgets/buttons.dart';
import 'package:oneplus/widgets/custom_circular_image.dart';

import '../services/api_urls.dart';
import '../services/auth.dart';
import '../services/webservices.dart';

class Visiters_Profile_Page extends StatefulWidget {
  const Visiters_Profile_Page({Key? key}) : super(key: key);

  @override
  State<Visiters_Profile_Page> createState() => _Visiters_Profile_PageState();
}

bool post = true;
bool list = false;

class _Visiters_Profile_PageState extends State<Visiters_Profile_Page> {
  List image = [
    MyImages.avtarone,
    MyImages.avatr8,
    MyImages.avatr3,
    MyImages.avatr4,
    MyImages.avatr5,
    MyImages.avatr6,
  ];
  List<String> name = [
    'Hary',
    'Ronaldo',
    'Jacky',
    'Ryder',
    'Solomen',
    'Hary',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get_info();
  }

  get_info() async {
    var id = await getCurrentUserId();
    var res = await Webservices.get('${ApiUrls.get_user_by_id}?user_id=${id}');
    if (res['status'].toString() == '1') {
      user_Data = res['data'];
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: appBar(
        titlecenter: false,
        context: context,
        title: 'Profile',
        titleColor: MyColors.paragraphcolor,
        appBarColor: MyColors.primaryColor.withOpacity(0.8),
        // actions: [
        //   TextButton(
        //       onPressed: (){},
        //       child: ParagraphText(text: '+ Create New Post',)
        //   )
        // ]
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: MyColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft:
                      Radius.circular(MediaQuery.of(context).size.width / 3),
                  bottomRight:
                      Radius.circular(MediaQuery.of(context).size.width / 3),
                )),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vSizedBox8,
                  Container(
                    width: width(context),
                    decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [shadow]),
                    padding: horizontal_pad,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomCircularImage(
                                imageUrl: user_Data!['profile_image'],
                                width: 110,
                                height: 110,
                              ),
                              // CircleAvatarcustom(
                              //   image: MyImages.avatr6,
                              //   height: 100,
                              //   width: 100,
                              // ),
                              vSizedBox2,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    flex:10,
                                    child: ParagraphText(
                                      text: '${user_Data!['name'] ?? ''}',
                                      fontFamily: 'semibold',
                                      fontSize: 24,
                                      height: 0.8,
                                    ),
                                  ),
                                  hSizedBox,
                                  Expanded(
                                    flex: 2,
                                      child: ParagraphText(
                                    text: '${user_Data!['age'] ?? ''}Year',
                                    fontFamily: 'semibold',
                                    fontSize: 14,
                                  )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ParagraphText(
                                    text:
                                        '${user_Data!['city'] ?? ''} ${user_Data!['country'] ?? ''}',
                                    fontSize: 20,
                                  ),
                                  hSizedBox05,
                                  Image.asset(
                                    user_Data!['country_flag'],
                                    height: 20,
                                  )
                                ],
                              ),
                              vSizedBox,
                              ParagraphText(
                                text:
                                    'Strangers are just friends waiting to happen',
                                fontSize: 12,
                              ),
                              vSizedBox,
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: RoundEdgedButton(
                                      text: 'Add to +1',
                                      fontSize: 14,
                                      verticalPadding: 0,
                                      horizontalPadding: 5,
                                      borderRadius: 10,
                                      height: 40,
                                    )),
                                    hSizedBox,
                                    Expanded(
                                        child: RoundEdgedButton(
                                      text: 'Message',
                                      fontSize: 14,
                                      verticalPadding: 0,
                                      horizontalPadding: 5,
                                      borderRadius: 10,
                                      height: 40,
                                      color: MyColors.secondarycolor,
                                      textColor: MyColors.white,
                                    )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            top: 8,
                            right: -8,
                            child: GestureDetector(
                                onTap: () async {
                                  await push(
                                      context: context,
                                      screen: Edit_Profile_Page());
                                  get_info();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    MyImages.edit,
                                    height: 24,
                                  ),
                                )))
                      ],
                    ),
                  ),
                  vSizedBox4,
                  MainHeadingText(
                    text: 'About',
                    fontSize: 20,
                    fontFamily: 'semibold',
                  ),
                  vSizedBox,
                  ParagraphText(
                    text: '${user_Data!['about'] ?? '--'}',
                    fontSize: 14,
                  ),
                  vSizedBox4,
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            post = true;
                            list = false;
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ParagraphText(
                              text: 'Posts',
                              underlined: post ? true : false,
                              fontSize: 23,
                              fontFamily: 'bold',
                              color:
                                  post ? MyColors.primaryColor : MyColors.black,
                              height: 0.8,
                            ),
                            hSizedBox05,
                            Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: post
                                      ? MyColors.primaryColor
                                      : Color(0xff959292)),
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
                        onTap: () {
                          setState(() {
                            post = false;
                            list = true;
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ParagraphText(
                              text: '+1 List',
                              underlined: list ? true : false,
                              fontSize: 23,
                              fontFamily: 'bold',
                              color:
                                  list ? MyColors.primaryColor : MyColors.black,
                              height: 0.8,
                            ),
                            hSizedBox05,
                            Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: list
                                      ? MyColors.primaryColor
                                      : Color(0xff959292)),
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
                  if (post)
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                              boxShadow: [shadow]),
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset(
                                  MyImages.post,
                                  fit: BoxFit.fitWidth,
                                  height: 199,
                                ),
                              ),
                              vSizedBox4,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: ParagraphText(
                                      text:
                                          '21 people are interested to go with you',
                                      fontSize: 10,
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      for (var i = 0; i < 5; i++)
                                        Transform.translate(
                                          offset: Offset(
                                              i < 0
                                                  ? -65
                                                  : i < 1
                                                      ? -52
                                                      : i < 2
                                                          ? -39
                                                          : i < 3
                                                              ? -26
                                                              : i < 4
                                                                  ? -13
                                                                  : 0,
                                              0),
                                          child: CircleAvatarcustom(
                                            image: image[i],
                                            height: 20,
                                            width: 20,
                                          ),
                                        ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 40,
                          child: GestureDetector(
                            child: Container(
                              width: MediaQuery.of(context).size.width - 62,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xFFd6d5d5),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [shadow]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ParagraphText(
                                    text: 'Tomorrow at 12 pm',
                                    fontSize: 12,
                                  ),
                                  ParagraphText(
                                    text: 'Happy New Year Party',
                                    fontFamily: 'semibold',
                                    fontSize: 16,
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              showCustomDialogBox(
                                  background: MyColors.popupbackground,
                                  marginhorizontal: 30,
                                  padleft: 0,
                                  padright: 0,
                                  padtop: 0,
                                  bottom: 0,
                                  context: context,
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 20),
                                        decoration: BoxDecoration(
                                            color: MyColors.fadeprimary,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                            boxShadow: [shadow]),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ParagraphText(
                                              text: 'Tomorrow at 12 pm',
                                              fontSize: 18,
                                            ),
                                            ParagraphText(
                                              text: 'Happy New Year Party',
                                              fontFamily: 'semibold',
                                              fontSize: 24,
                                            ),
                                          ],
                                        ),
                                      ),
                                      vSizedBox,
                                      for (var i = 0; i < 5; i++)
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: Column(
                                            children: [
                                              GestureDetector(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        CircleAvatarcustom(
                                                          image: image[i],
                                                          isshadow: true,
                                                        ),
                                                        hSizedBox,
                                                        ParagraphText(
                                                          text: name[i],
                                                          color: MyColors
                                                              .paragraphcolor,
                                                          fontSize: 20,
                                                          fontFamily:
                                                              'semibold',
                                                        ),
                                                      ],
                                                    ),
                                                    vSizedBox05,
                                                    RoundEdgedButton(
                                                      text: 'Send Message',
                                                      height: 35,
                                                      fontSize: 13,
                                                      verticalPadding: 0,
                                                      minWidth: 100,
                                                      horizontalPadding: 0,
                                                      color:
                                                          MyColors.fadeprimary,
                                                      isshadow: false,
                                                    ),
                                                  ],
                                                ),
                                                onTap: () {
                                                  push(
                                                      context: context,
                                                      screen:
                                                          Profile_View_From_Posts());
                                                },
                                              ),
                                              vSizedBox,
                                              vSizedBox05,
                                            ],
                                          ),
                                        ),
                                    ],
                                  ));
                            },
                          ),
                        ),
                      ],
                    ),
                  if (list)
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      runAlignment: WrapAlignment.spaceBetween,
                      // alignment: WrapAlignment.spaceBetween,
                      children: [
                        for (var i = 0; i < 6; i++)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatarcustom(
                                borderradius: 10,
                                image: image[i],
                                height: 72,
                                width: 72,
                              ),
                              ParagraphText(
                                text: 'Hary',
                                fontFamily: 'bold',
                                fontSize: 18,
                              )
                            ],
                          ),
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
