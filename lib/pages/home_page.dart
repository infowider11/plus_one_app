import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constants/colors.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/constants/image_urls.dart';
import 'package:oneplus/constants/sized_box.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/category_details.dart';
import 'package:oneplus/pages/create_new_post_page.dart';
import 'package:oneplus/pages/edit_profile.dart';
import 'package:oneplus/pages/notifications_page.dart';
import 'package:oneplus/pages/profile.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/appbar.dart';
import 'package:oneplus/widgets/avatar.dart';
import 'package:oneplus/widgets/buttons.dart';
import 'package:oneplus/widgets/customtextfield.dart';
import 'package:oneplus/widgets/drawer.dart';

import 'visiter_profile_page.dart';

enum SingingCharacter { lafayette, jefferson, both }

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

bool post = true;
bool list = false;

class _Home_PageState extends State<Home_Page> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  SingingCharacter? _character = SingingCharacter.lafayette;

  var scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  TextEditingController search = TextEditingController();
  List image=[
    MyImages.avtarone,
    MyImages.avatr8,
    MyImages.avatr3,
    MyImages.avatr4,
    MyImages.avatr5,
    MyImages.avatr6,
  ];

  List icons =[
    MyImages.weddings_color,
    MyImages.invitation,
    MyImages.paint_color,
    MyImages.thanks1,
    MyImages.birthday_color,

  ];

  final List text = [
    'Preference',
    'My +1 List',
    'All',
  ];

  List catimg =[
    MyImages.wedding_black,
    MyImages.birthday_all,
    MyImages.hallowen_black,
    MyImages.thanks_black,
    MyImages.birthday_color,

  ];

  final List cat = [
    'Wedding',
    'Birthday',
    'Hallowen',
    'Thanks',
  ];

  @override
  Widget build(BuildContext context) {
    double _currentSliderValue = 20;
    return Scaffold(
        key: scaffoldKey,
      backgroundColor: MyColors.white,
      appBar: appBar(
        titlecenter: false,
        implyLeading: false,
        context: context,
        title: '+1',
        fontsize: 30,
        fontfamily: 'semibold',
        titleColor: MyColors.paragraphcolor,
        appBarColor: MyColors.primaryColor.withOpacity(0.8),
        leading: GestureDetector(
            onTap: (){
              scaffoldKey.currentState?.openDrawer();
            },
            child: Icon(Icons.menu, color: MyColors.black,)
        ),
        actions: [
          GestureDetector(
              onTap: (){
                push(context: context, screen: Notifications_Page());
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
                push(context: context, screen: Visiters_Profile_Page());
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
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  vSizedBox,
                  CustomTextField(
                      controller: search,
                      hintText: 'Search for event...e.g. birthday, anniversary',
                     bordercolor: Colors.transparent,
                    bgColor: Color(0xFFf6f6f6),
                    prefixIcon: MyImages.search,
                    suffixheight: 15,
                  ),
                  vSizedBox2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            for(var i=0; i<3; i++)
                              Row(
                                children: [
                                  ChoiceChip(
                                    labelPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                                    shape: StadiumBorder(
                                        side: BorderSide(
                                            color: MyColors.bordercolor
                                        )
                                    ),
                                    backgroundColor: Colors.white,
                                    selectedColor: MyColors.primaryColor,
                                    selected: _selectedIndex == i,
                                    label: Text(text[i]),
                                    onSelected: (selected) {
                                      if (selected) {
                                        setState(() {
                                          _selectedIndex = i;
                                        });
                                      }
                                    },
                                  ),
                                  hSizedBox,
                                ],
                              )
                          ]
                      ),
                      GestureDetector(
                        child: Image.asset(
                          MyImages.filter, height: 25,
                        ),
                        onTap: (){
                          showCustomDialogBox(
                            background: MyColors.primaryColor,
                              context: context,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ParagraphText(text: 'Gender', fontSize: 16,),
                                  // vSizedBox,
                                  Row(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Radio<SingingCharacter>(
                                            activeColor: MyColors.bordercolor,
                                            visualDensity: VisualDensity(horizontal: -4),
                                            value: SingingCharacter.lafayette,
                                            groupValue: _character,
                                            onChanged: (SingingCharacter? value) {
                                              setState(() {
                                                _character = value;
                                              });
                                            },
                                          ),
                                          // hSizedBox05,
                                          ParagraphText(text: 'Men', fontSize: 14, color: MyColors.paragraphcolor.withOpacity(0.50),)
                                        ],
                                      ),hSizedBox2,
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Radio<SingingCharacter>(
                                            activeColor: MyColors.bordercolor,
                                            visualDensity: VisualDensity(horizontal: -4),
                                            value: SingingCharacter.jefferson,
                                            groupValue: _character,
                                            onChanged: (SingingCharacter? value) {
                                              setState(() {
                                                _character = value;
                                              });
                                            },
                                          ),
                                          // hSizedBox05,
                                          ParagraphText(text: 'Women', fontSize: 14, color: MyColors.paragraphcolor.withOpacity(0.50),)
                                        ],
                                      ),hSizedBox2,
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Radio<SingingCharacter>(
                                            activeColor: MyColors.bordercolor,
                                            visualDensity: VisualDensity(horizontal: -4),
                                            value: SingingCharacter.both,
                                            groupValue: _character,
                                            onChanged: (SingingCharacter? value) {
                                              setState(() {
                                                _character = value;
                                              });
                                            },
                                          ),
                                          // hSizedBox05,
                                          ParagraphText(text: 'Both', fontSize: 14, color: MyColors.paragraphcolor.withOpacity(0.50),)
                                        ],
                                      ),

                                    ],
                                  ),
                                  ParagraphText(text: 'Age', fontSize: 16,),
                                  SliderTheme(
                                    data: SliderThemeData(
                                        thumbColor: Colors.red,
                                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20),
                                        trackHeight: 2,
                                    ),
                                    child: RangeSlider(
                                      
                                      values: _currentRangeValues,
                                      max: 100,
                                      min: 0,
                                      divisions: 2,
                                      activeColor: MyColors.white,
                                      inactiveColor: MyColors.bordercolor,
                                      labels: RangeLabels(
                                        _currentRangeValues.start.round().toString(),
                                        _currentRangeValues.end.round().toString(),
                                      ),
                                      onChanged: (RangeValues values) {
                                        setState(() {
                                          _currentRangeValues = values;
                                        });
                                      },
                                    ),
                                  ),
                                  ParagraphText(text: 'Location (Miles)', fontSize: 16,),
                                  SliderTheme(
                                    data: SliderThemeData(
                                        thumbColor: Colors.red,
                                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20),
                                        trackHeight: 2,
                                    ),
                                    child: RangeSlider(
                                      values: _currentRangeValues,
                                      max: 100,
                                      min: 0,
                                      divisions: 2,
                                      activeColor: MyColors.white,
                                      inactiveColor: MyColors.bordercolor,
                                      labels: RangeLabels(
                                        _currentRangeValues.start.round().toString(),
                                        _currentRangeValues.end.round().toString(),
                                      ),
                                      onChanged: (RangeValues values) {
                                        setState(() {
                                          _currentRangeValues = values;
                                        });
                                      },
                                    ),
                                  ),
                                  ParagraphText(text: 'Date', fontSize: 16,),
                                  vSizedBox,
                                  Container(
                                    width: MediaQuery.of(context).size.width - 200,
                                    child: CustomTextField(
                                        controller: search,
                                        hintText: '13 Aug 2022',
                                        bgColor: Color(0xFFefebeb),
                                        bordercolor: Colors.transparent,
                                       suffixIcon:MyImages.cal_icon,
                                      suffixheight: 20,
                                    ),
                                  )
                                ],
                              )
                          );
                        },
                      )
                    ],
                  ),
                  vSizedBox2,
                  if(_selectedIndex == 0)
                    for(var i=0; i<5; i++)
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                CircleAvatarcustom(
                                  image: image[i],
                                  height: 70,
                                  width: 70,
                                  borderradius: 110,
                                ),
                                hSizedBox,
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        // crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          ParagraphText(
                                            text: 'Lofi' + ' ',fontSize: 23, fontFamily: 'bold',
                                          ),
                                          ParagraphText(
                                            text: '2 min ago',fontSize: 12, color: MyColors.popupbackground,
                                          ),
                                        ],
                                      ),
                                      ParagraphText(
                                        text: 'I need a lady who can accompany me to my friend\'s wedding',fontSize: 14,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          hSizedBox2,
                          Image.asset(icons[i], height: 35, width: 35,)
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFf6f6f6),
                          borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.transparent)
                      ),
                      padding: EdgeInsets.all(16),
                    ),

                  if(_selectedIndex == 1)
                    for(var i=0; i<5; i++)
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  CircleAvatarcustom(
                                    image: image[i],
                                    height: 70,
                                    width: 70,
                                    borderradius: 15,
                                  ),
                                  hSizedBox,
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            ParagraphText(
                                              text: 'Lofi' + ' ',fontSize: 23, fontFamily: 'bold',
                                            ),
                                            ParagraphText(
                                              text: '2 min ago',fontSize: 12, color: MyColors.popupbackground,
                                            ),
                                          ],
                                        ),
                                        ParagraphText(
                                          text: 'I need a lady who can accompany me to my friend\'s wedding',fontSize: 14,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            hSizedBox2,
                            Image.asset(icons[i], height: 35, width: 35,)
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFf6f6f6),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: MyColors.primaryColor)
                        ),
                        padding: EdgeInsets.all(16),
                      ),

                  if(_selectedIndex==2)
                    for(var i=0; i<4; i++)
                    GestureDetector(
                      onTap: (){
                        push(context: context, screen: Category_Details());
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: [shadow],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                decoration: BoxDecoration(
                                    // color: Color(0xFFf6f6f6),
                                    color: MyColors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    // border: Border.all(color: MyColors.primaryColor)
                                    boxShadow: [shadow]
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        top: 0,
                                        right: -25,
                                        child: Image.asset(
                                          MyImages.top_right3,
                                          fit: BoxFit.contain,
                                          height: 200,
                                          color: i==1?Color(0xFF959292):i==2?Color(0xFF100f0f):i==3?Color(0xFFfca071):Color(0xFFff8d75),
                                        )
                                    ),
                                    // Positioned(
                                    //     top: 0,
                                    //     right: -25,
                                    //     child: Image.asset(
                                    //       MyImages.top_right2,
                                    //       fit: BoxFit.contain,
                                    //       height: 150,
                                    //       color: i==1?Color(0xFFd6d5d5):i==3?Color(0xFFd6d5d5):Color(0xFFffb28b).withOpacity(0.5),
                                    //     )
                                    // ),
                                    // Positioned(
                                    //     top: 0,
                                    //     left: -15,
                                    //     child: Image.asset(MyImages.top_left, fit: BoxFit.contain, height: 195,
                                    //     color: i==0?Color(0xFFff8d75):i==1? Color(0xFF959292):i==2?Color(0xff100f0f): i==3? Color(0xFFd6d5d5): MyColors.black,
                                    //     )
                                    // ),
                                    // Positioned(
                                    //     top: 0,
                                    //     right: 0,
                                    //     child: Image.asset(MyImages.top_right, fit: BoxFit.contain, height: 60,)
                                    // ),
                                    Container(
                                      padding: EdgeInsets.only(right: 30),
                                      height: 190,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              vSizedBox,
                                              Padding(
                                                padding: const EdgeInsets.only(left: 16.0, bottom: 10, top: 15),
                                                child:ParagraphText(text: cat[i],
                                                  fontFamily: 'semibold',
                                                  fontSize: 35,
                                                  color: MyColors.black,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 16.0),
                                                child: Stack(
                                                  children: [
                                                    RoundEdgedButton(
                                                      text: '500 Requests',
                                                      borderRadius: 0,
                                                      minWidth: 10,
                                                      fontSize: 14,
                                                      height: 30,
                                                      horizontalPadding: 15,
                                                      color: MyColors.primaryColor,
                                                      textColor: MyColors.black,
                                                      isshadow: false,
                                                    ),
                                                    Positioned(
                                                      right: 0,
                                                        child: Container(
                                                          child: Image.asset(
                                                            MyImages.btn_cropper, height: 30,),
                                                        )
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Image.asset(catimg[i], height: 99, color: MyColors.white,)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          vSizedBox,
                        ],
                      ),
                    )
                ],
              ),
            )

      ),


        ],
      ),

        drawer: get_drawer(context)

    );
  }
}
