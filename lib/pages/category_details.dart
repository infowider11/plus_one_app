import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constants/colors.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/constants/image_urls.dart';
import 'package:oneplus/constants/sized_box.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/edit_profile.dart';
import 'package:oneplus/pages/post_single_view_page.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/appbar.dart';
import 'package:oneplus/widgets/avatar.dart';
import 'package:oneplus/widgets/buttons.dart';

class Category_Details extends StatefulWidget {
  const Category_Details({Key? key}) : super(key: key);

  @override
  State<Category_Details> createState() => _Category_DetailsState();
}
bool post = true;
bool list = false;
class _Category_DetailsState extends State<Category_Details> {
  List image=[
    MyImages.avtarone,
    MyImages.avatr8,
    MyImages.avatr3,
    MyImages.avatr4,
    MyImages.avatr5,
    MyImages.avatr6,
    MyImages.avtarone,
    MyImages.avatr8,
    MyImages.avatr3,
    MyImages.avatr4,
    MyImages.avatr5,
    MyImages.avatr6,
  ];

  List icons =[
    MyImages.wedding,
    MyImages.birthday,
    MyImages.hallowen,
    MyImages.thanks,
    MyImages.invite,

  ];
  List<String> name=[
    'Hary',
    'Ronaldo',
    'Jacky',
    'Ryder',
    'Solomen',
    'Hary',
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
                              text: 'Wedding',
                              fontSize: 20,
                              fontFamily: 'bold',
                              color: post?MyColors.black: Color(0xFF959292),
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
                                  text: '500',
                                  fontSize: 9,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      hSizedBox2,
                      GestureDetector(
                        onTap: (){
                          // setState((){
                          //   post = false;
                          //   list = true;
                          // });
                        },
                        child: Image.asset(MyImages.filter, height: 24,),
                      ),
                    ],
                  ),
                  vSizedBox2,
                  if(post)
                  Wrap(
                      spacing: 10,
                      runSpacing: 15,
                      runAlignment: WrapAlignment.spaceBetween,
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        for(var i=0; i<9; i++)
                          Container(
                            width: MediaQuery.of(context).size.width /3.7,
                            margin: EdgeInsets.only(left: 0, right: 5, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  child: CircleAvatarcustom(
                                    image: image[i],
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,
                                    borderradius: 10,
                                    isshadow: true,
                                    fit: BoxFit.cover,
                                  ),
                                  onTap: (){
                                    push(context: context, screen: Post_Single_View_Page());
                                  },
                                ),
                                vSizedBox05,
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ParagraphText(text: name[i], fontFamily: 'bold', fontSize: 18,),
                                      ParagraphText(text: 'Going to Friend\'s wedding...', fontSize: 10,)
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                      ],
                    ),
                  vSizedBox2,
                  ParagraphText(
                    text: 'More Categories',
                    color: MyColors.paragraphcolor,
                    fontFamily: 'semibold',
                  ),
                  vSizedBox,
                  Container(
                    height: 150,
                    child: ListView(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      children: [
                        for(var i=0; i<5; i++)
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              shadow
                            ],
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          width: MediaQuery.of(context).size.width / 2.5,
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: MyColors.primaryColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    )
                                ),
                                child: Image.asset(icons[i], height: 50,),
                              ),
                              vSizedBox,
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ParagraphText(text: 'WEDDING', fontSize: 20, fontFamily: 'semibold',),
                                    ParagraphText(text: '500 Requests', fontSize: 14,),
                                  ],
                                ),
                              )
                            ],
                          ),

                        )
                      ],
                    ),
                  ),
                  vSizedBox,
                ],
              ),
            ),

      ),


        ],
      ),

    );
  }
}
