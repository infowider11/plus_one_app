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

enum SingingCharacter { lafayette, jefferson }
enum gender { male, feemale, both }
class Create_New_Post_Page extends StatefulWidget {
  const Create_New_Post_Page({Key? key}) : super(key: key);

  @override
  State<Create_New_Post_Page> createState() => _Create_New_Post_PageState();
}

class _Create_New_Post_PageState extends State<Create_New_Post_Page> {
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
          title: 'Create Post',
          titleColor: MyColors.paragraphcolor,
          titlecenter: false
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: horizontal_pad,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                vSizedBox,
                vSizedBox,
                CustomTextField(
                  controller: email,
                  hintText: 'Type of Event or Activity',
                  prefixIcon: MyImages.noteedit,
                  suffixheight: 15,
                ),
                vSizedBox,
                CustomTextField(
                  controller: email,
                  hintText: 'Title',
                  prefixIcon: MyImages.user,
                  obscureText: true,
                  suffixheight: 15,
                ),
                vSizedBox,
                CustomTextField(
                  controller: email,
                  hintText: 'Location of Event',
                  prefixIcon: MyImages.user,
                  obscureText: true,
                  suffixheight: 15,
                ),
                vSizedBox,
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ParagraphText(text: 'Date', fontSize: 16, fontFamily: 'bold',),
                          vSizedBox,
                          CustomTextField(
                            controller: email,
                            hintText: '13 Aug 2022',
                            suffixIcon: MyImages.user,
                            obscureText: true,
                            suffixheight: 15,
                          ),
                        ],
                      ),
                    ),
                    hSizedBox05,
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ParagraphText(text: 'Time', fontSize: 16, fontFamily: 'bold',),
                          vSizedBox,
                          Row(
                            children: [
                              Container(
                                height: 50,
                                padding: horizontal_pad,
                                decoration: BoxDecoration(
                                  border: Border.all(color: MyColors.bordercolor),
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ParagraphText(text: 'Start Time', fontSize: 10,),
                                    ParagraphText(text: '12:00 PM', fontSize: 16,)
                                  ],
                                ),
                              ),
                              hSizedBox05,
                              Container(
                                height: 50,
                                padding: horizontal_pad,
                                decoration: BoxDecoration(
                                    border: Border.all(color: MyColors.bordercolor),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ParagraphText(text: 'End Time', fontSize: 10,),
                                    ParagraphText(text: '12:00 PM', fontSize: 16,)
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                vSizedBox,
                Row(
                  children: [
                    ParagraphText(text: 'Add Media ', fontSize: 16, fontFamily: 'bold',),
                      ParagraphText(text: '(Optional)', fontSize: 14, color: MyColors.popupbackground,),
                  ],
                ),
                vSizedBox,
                CircleAvatarcustom(
                  image: MyImages.avatr6,
                  bordercolor: MyColors.bordercolor,
                  borderradius: 12,
                  height: 68,
                  width: 64,
                  fit: BoxFit.cover,
                ),
                vSizedBox,
                Row(
                  children: [
                    ParagraphText(text: 'Additional Info ', fontSize: 16, fontFamily: 'bold',),
                      ParagraphText(text: '(Optional)', fontSize: 14, color: MyColors.popupbackground,),
                  ],
                ),
                vSizedBox,
                CustomTextField(
                  controller: email,
                  hintText: 'Add More Details (E.g, what do you expect from your plus one or what should be expected?, etc)',
                  maxLines: 4,
                  borderradius: 16,
                ),
                vSizedBox2,
                Row(
                  children: [
                    ParagraphText(text: 'Restriction Settings ',color: MyColors.primaryColor, fontSize: 16,),
                    Icon(Icons.expand_more_outlined, size: 16, color: MyColors.primaryColor,)
                  ],
                ),
                vSizedBox,
                ParagraphText(text: 'Additional Info ', fontSize: 16, fontFamily: 'bold',),
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
                        ParagraphText(text: 'Everyone', fontSize: 14, color: MyColors.paragraphcolor.withOpacity(0.50),)
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
                        ParagraphText(text: 'Only the people on my +1 List ', fontSize: 14, color: MyColors.paragraphcolor.withOpacity(0.50),)
                      ],
                    ),
                  ],
                ),
                vSizedBox,
                ParagraphText(text: 'Gender ', fontSize: 16, fontFamily: 'bold',),
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
                        ParagraphText(text: 'Only Males', fontSize: 14, color: MyColors.paragraphcolor.withOpacity(0.50),)
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
                        ParagraphText(text: 'Only Females ', fontSize: 14, color: MyColors.paragraphcolor.withOpacity(0.50),)
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
                vSizedBox,
                Center(
                  child: RoundEdgedButton(
                    borderRadius: 10,
                    fontSize: 16,
                    text: 'Post',
                    minWidth: 150,
                    color: MyColors.fadeprimary,
                    onTap: (){
                      push(context: context, screen: Profile_Page());
                    },
                  ),
                ),
                vSizedBox4,
              ],
            ),
          ),
        ));
  }
}
