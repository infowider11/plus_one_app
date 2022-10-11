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
bool isSwitched = false;
bool isSwitched2 = false;
enum SingingCharacter { lafayette, jefferson }
enum gender { male, feemale, both }
class Settings_Page extends StatefulWidget {
  const Settings_Page({Key? key}) : super(key: key);

  @override
  State<Settings_Page> createState() => _Settings_PageState();
}

class _Settings_PageState extends State<Settings_Page> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  gender? _gender = gender.male;
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
          title: 'Settings',
          titleColor: MyColors.paragraphcolor,
          titlecenter: false
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: horizontal_pad,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                vSizedBox2,
                MainHeadingText(text: 'Events', fontSize: 28,),
                vSizedBox,
                ParagraphText(
                  text: 'Who can see my events? ',
                  fontSize: 16, fontFamily: 'semibold',),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<SingingCharacter>(
                          activeColor: MyColors.primaryColor,
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
                        ParagraphText(
                          text: 'Public',
                          fontSize: 14,
                          color: MyColors.paragraphcolor
                        )
                      ],
                    ),
                    hSizedBox2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<SingingCharacter>(
                          activeColor: MyColors.primaryColor,
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
                        ParagraphText(
                          text: 'Private',
                          fontSize: 14,
                          color: MyColors.paragraphcolor
                        )
                      ],
                    ),
                    hSizedBox2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<SingingCharacter>(
                          activeColor: MyColors.primaryColor,
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
                        ParagraphText(text: 'Only my +1 List ', fontSize: 14, color: MyColors.paragraphcolor,)
                      ],
                    ),
                  ],
                ),
                vSizedBox,
                ParagraphText(
                  text: 'Your Preferred Audience ',
                  fontSize: 16, fontFamily: 'semibold',),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<gender>(
                          activeColor: MyColors.primaryColor,
                          visualDensity: VisualDensity(horizontal: -4),
                          value: gender.male,
                          groupValue: _gender,
                          onChanged: (gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                        // hSizedBox05,
                        ParagraphText(text: 'Men', fontSize: 14, color: MyColors.paragraphcolor.withOpacity(0.50),)
                      ],
                    ),
                    hSizedBox2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<gender>(
                          activeColor: MyColors.primaryColor,
                          visualDensity: VisualDensity(horizontal: -4),
                          value: gender.feemale,
                          groupValue: _gender,
                          onChanged: (gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                        // hSizedBox05,
                        ParagraphText(text: 'Women', fontSize: 14, color: MyColors.paragraphcolor.withOpacity(0.50),)
                      ],
                    ),
                    hSizedBox2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<gender>(
                          activeColor: MyColors.primaryColor,
                          visualDensity: VisualDensity(horizontal: -4),
                          value: gender.both,
                          groupValue: _gender,
                          onChanged: (gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                        // hSizedBox05,
                        ParagraphText(text: 'Both ', fontSize: 14, color: MyColors.paragraphcolor.withOpacity(0.50),)
                      ],
                    ),
                  ],
                ),
                vSizedBox4,
                MainHeadingText(text: '+1 List', fontSize: 28,),
                vSizedBox,
                ParagraphText(
                  text: 'Others can ',
                  fontSize: 16, fontFamily: 'semibold',
                ),
                vSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ParagraphText(text: 'Seek for my condition before add',
                      fontSize: 14, color: MyColors.paragraphcolor,),
                    Switch(
                      value: isSwitched,
                      activeColor: MyColors.primaryColor,
                      inactiveThumbColor: MyColors.paragraphcolor.withOpacity(0.5),
                      inactiveTrackColor: MyColors.popupbackground,
                      onChanged: (value){
                        setState((){
                          isSwitched = !isSwitched;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ParagraphText(text: 'Auto Add Me',
                      fontSize: 14, color: MyColors.paragraphcolor,),
                    Switch(
                      value: isSwitched2,
                      activeColor: MyColors.primaryColor,
                      inactiveThumbColor: MyColors.paragraphcolor.withOpacity(0.5),
                      inactiveTrackColor: MyColors.popupbackground,
                      onChanged: (value){
                        setState((){
                          isSwitched2 = !isSwitched2;
                        });
                      },
                    )
                  ],
                ),
                ParagraphText(
                  text: 'Who Can View My +1 List? ',
                  fontSize: 16, fontFamily: 'semibold',),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<SingingCharacter>(
                          activeColor: MyColors.primaryColor,
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
                        ParagraphText(
                            text: 'Public',
                            fontSize: 14,
                            color: MyColors.paragraphcolor
                        )
                      ],
                    ),
                    hSizedBox2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<SingingCharacter>(
                          activeColor: MyColors.primaryColor,
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
                        ParagraphText(
                            text: 'Private',
                            fontSize: 14,
                            color: MyColors.paragraphcolor
                        )
                      ],
                    ),
                    hSizedBox2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<SingingCharacter>(
                          activeColor: MyColors.primaryColor,
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
                        ParagraphText(text: 'Only my +1 List ', fontSize: 14, color: MyColors.paragraphcolor,)
                      ],
                    ),
                  ],
                ),
                vSizedBox2,
                MainHeadingText(text: 'Notification', fontSize: 28,),
                vSizedBox,
                ParagraphText(
                  text: 'Notify me ',
                  fontSize: 16, fontFamily: 'semibold',
                ),
                vSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ParagraphText(text: 'Someone show interest in my event',
                      fontSize: 14, color: MyColors.paragraphcolor,),
                    Switch(
                      value: isSwitched,
                      activeColor: MyColors.primaryColor,
                      inactiveThumbColor: MyColors.paragraphcolor.withOpacity(0.5),
                      inactiveTrackColor: MyColors.popupbackground,
                      onChanged: (value){
                        setState((){
                          isSwitched = !isSwitched;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ParagraphText(text: 'New message alert',
                      fontSize: 14, color: MyColors.paragraphcolor,),
                    Switch(
                      value: isSwitched,
                      activeColor: MyColors.primaryColor,
                      inactiveThumbColor: MyColors.paragraphcolor.withOpacity(0.5),
                      inactiveTrackColor: MyColors.popupbackground,
                      onChanged: (value){
                        setState((){
                          isSwitched = !isSwitched;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ParagraphText(text: 'Someone add me',
                      fontSize: 14, color: MyColors.paragraphcolor,),
                    Switch(
                      value: isSwitched,
                      activeColor: MyColors.primaryColor,
                      inactiveThumbColor: MyColors.paragraphcolor.withOpacity(0.5),
                      inactiveTrackColor: MyColors.popupbackground,
                      onChanged: (value){
                        setState((){
                          isSwitched = !isSwitched;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ParagraphText(text: 'Cancel my invitation',
                      fontSize: 14, color: MyColors.paragraphcolor,),
                    Switch(
                      value: isSwitched,
                      activeColor: MyColors.primaryColor,
                      inactiveThumbColor: MyColors.paragraphcolor.withOpacity(0.5),
                      inactiveTrackColor: MyColors.popupbackground,
                      onChanged: (value){
                        setState((){
                          isSwitched = !isSwitched;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ParagraphText(text: 'An event date is near',
                      fontSize: 14, color: MyColors.paragraphcolor,),
                    Switch(
                      value: isSwitched,
                      activeColor: MyColors.primaryColor,
                      inactiveThumbColor: MyColors.paragraphcolor.withOpacity(0.5),
                      inactiveTrackColor: MyColors.popupbackground,
                      onChanged: (value){
                        setState((){
                          isSwitched = !isSwitched;
                        });
                      },
                    )
                  ],
                ),

              ],
            ),
          ),
        ));
  }
}
