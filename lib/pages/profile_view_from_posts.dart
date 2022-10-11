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
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Profile_View_From_Posts extends StatefulWidget {
  const Profile_View_From_Posts({Key? key}) : super(key: key);

  @override
  State<Profile_View_From_Posts> createState() => _Profile_View_From_PostsState();
}
bool post = true;
bool list = false;
class _Profile_View_From_PostsState extends State<Profile_View_From_Posts> {
  List image=[
    MyImages.avtarone,
    MyImages.avatr8,
    MyImages.avatr3,
    MyImages.avatr4,
    MyImages.avatr5,
    MyImages.avatr6,
  ];

  PageController controller = PageController();
  page0(){
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vSizedBox2,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatarcustom(
                  image: MyImages.avatr6,
                  height: 120,
                  width: 120,
                  borderradius: 110,
                ),
                hSizedBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ParagraphText(
                          text: 'Jolie', fontFamily: 'semibold',fontSize: 28,
                        ),
                        hSizedBox,
                        Image.asset(
                          MyImages.maleoutline, height: 20,)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ParagraphText(
                          text: 'Born on ',fontSize: 15,
                        ),
                        ParagraphText(
                          text: '18 july 1995',fontSize: 17,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            vSizedBox4,
            ParagraphText(
              text: 'There are no strangers here on earth, only friends you haven\'t yet met.',
              fontSize: 14,
            ),
            vSizedBox4,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ParagraphText(
                      text: 'Harry\'s +1 List',
                      fontSize: 23,
                      fontFamily: 'bold',
                      color: MyColors.black,
                      height: 0.8,
                    ),
                    hSizedBox05,
                    hSizedBox05,
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: post? MyColors.primaryColor: Color(0xff959292)
                      ),
                      child: Center(
                        child: ParagraphText(
                          text: '33',
                        ),
                      ),
                    )
                  ],
                ),
                ParagraphText(text: 'See All', color: MyColors.paragraphcolor,)
              ],
            ),
            vSizedBox2,
            Container(
              height: 70,
              child: ListView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                children: [
                  for(var i=0; i<5; i++)
                    Row(
                      children: [
                        CircleAvatarcustom(
                          borderradius: 10,
                          image: image[i],
                          // height: 65,
                          // width: 65,
                          isshadow: true,
                        ),
                        SizedBox(width: 2,),
                      ],
                    ),
                ],
              ),
            ),
            vSizedBox4,
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ParagraphText(
                      text: 'Hary\'s Posts',
                      fontSize: 23,
                      fontFamily: 'bold',
                      color: MyColors.black,
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
                          text: '1',
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            vSizedBox2,
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      color: MyColors.popupbackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      boxShadow: [shadow]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          MyImages.post,
                          fit: BoxFit.fitWidth,
                          height: 155,
                        ),
                      ),
                      vSizedBox,
                      Container(
                        padding: horizontal_pad,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ParagraphText(text: 'Tomorrow at 12 pm', fontSize: 12,),
                            ParagraphText(text: 'Happy New Year Party',
                              fontFamily: 'semibold',
                              fontSize: 16,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            vSizedBox2,
            Center(
              child: RoundEdgedButton(text: 'Make Harry your +1',
                color: MyColors.popupbackground,
                fontSize: 15,
                borderRadius: 10,
                minWidth: 10,
                horizontalPadding: 15,
                verticalPadding: 0,
                height: 40,
              ),
            ),
            vSizedBox4
          ],
        ),
      ),
    );
  }
  page1(){
    return SingleChildScrollView(
      child: Container( 
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vSizedBox2,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatarcustom(
                  image: MyImages.avatr6,
                  height: 120,
                  width: 120,
                  borderradius: 110,
                ),
                hSizedBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ParagraphText(
                          text: 'Jolie', fontFamily: 'semibold',fontSize: 28,
                        ),
                        hSizedBox,
                        Image.asset(
                          MyImages.maleoutline, height: 20,)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ParagraphText(
                          text: 'Born on ',fontSize: 15,
                        ),
                        ParagraphText(
                          text: '18 july 1995',fontSize: 17,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            vSizedBox4,
            ParagraphText(
              text: 'There are no strangers here on earth, only friends you haven\'t yet met.',
              fontSize: 14,
            ),
            vSizedBox4,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ParagraphText(
                      text: 'Harry\'s +1 List',
                      fontSize: 23,
                      fontFamily: 'bold',
                      color: MyColors.black,
                      height: 0.8,
                    ),
                    hSizedBox05,
                    hSizedBox05,
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: post? MyColors.primaryColor: Color(0xff959292)
                      ),
                      child: Center(
                        child: ParagraphText(
                          text: '33',
                        ),
                      ),
                    )
                  ],
                ),
                ParagraphText(text: 'See All', color: MyColors.paragraphcolor,)
              ],
            ),
            vSizedBox2,
            Container(
              height: 70,
              child: ListView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                children: [
                  for(var i=0; i<5; i++)
                    Row(
                      children: [
                        CircleAvatarcustom(
                          borderradius: 10,
                          image: image[i],
                          // height: 65,
                          // width: 65,
                          isshadow: true,
                        ),
                        SizedBox(width: 2,),
                      ],
                    ),
                ],
              ),
            ),
            vSizedBox4,
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ParagraphText(
                      text: 'Hary\'s Posts',
                      fontSize: 23,
                      fontFamily: 'bold',
                      color: MyColors.black,
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
                          text: '1',
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            vSizedBox2,
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      color: MyColors.popupbackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      boxShadow: [shadow]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          MyImages.post,
                          fit: BoxFit.fitWidth,
                          height: 155,
                        ),
                      ),
                      vSizedBox,
                      Container(
                        padding: horizontal_pad,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ParagraphText(text: 'Tomorrow at 12 pm', fontSize: 12,),
                            ParagraphText(text: 'Happy New Year Party',
                              fontFamily: 'semibold',
                              fontSize: 16,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            vSizedBox2,
            Center(
              child: RoundEdgedButton(text: 'Make Harry your +1',
                color: MyColors.popupbackground,
                fontSize: 15,
                borderRadius: 10,
                minWidth: 10,
                horizontalPadding: 15,
                verticalPadding: 0,
                height: 40,
              ),
            ),

            vSizedBox4
          ],
        ),
      ),
    );
  }
  page2(){
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSizedBox2,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatarcustom(
                    image: MyImages.avatr6,
                    height: 120,
                    width: 120,
                    borderradius: 110,
                  ),
                  hSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ParagraphText(
                            text: 'Jolie', fontFamily: 'semibold',fontSize: 28,
                          ),
                          hSizedBox,
                          Image.asset(
                            MyImages.maleoutline, height: 20,)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ParagraphText(
                            text: 'Born on ',fontSize: 15,
                          ),
                          ParagraphText(
                            text: '18 july 1995',fontSize: 17,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              vSizedBox4,
              ParagraphText(
                text: 'There are no strangers here on earth, only friends you haven\'t yet met.',
                fontSize: 14,
              ),
              vSizedBox4,
              vSizedBox4,
              Center(child: Image.asset(MyImages.private_account, height: 128,)),
              vSizedBox,
              Center(
                child: ParagraphText(
                  text: 'This account is private',
                  fontSize: 14,
                  color: MyColors.paragraphcolor.withOpacity(0.4),
                ),
              ),


              vSizedBox4
            ],
          ),
        ),
        Positioned(
          bottom: 65,
            child: Container(
              width: width(context),
              child: Center(
                child: RoundEdgedButton(text: 'Make Harry your +1',
                  color: MyColors.popupbackground,
                  fontSize: 15,
                  borderRadius: 10,
                  minWidth: 10,
                  horizontalPadding: 15,
                  verticalPadding: 0,
                  height: 40,
                ),
              ),
            ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: appBar(
        titlecenter: false,
        context: context,
        title: 'Jolie',
        titleColor: MyColors.paragraphcolor,
        appBarColor: MyColors.primaryColor.withOpacity(0.8),

      ),
      body: Stack(
        children: [
          PageView.builder(
            // physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            controller: controller,
            itemBuilder: (context, index){
              switch(index){
                case 0: return page0();
                case 1: return page1();
                case 2: return page2();
                default: return page0();
              }
            },
          ),
          Positioned(
            bottom: 20,
            // alignment: Alignment.center,
            child: Container(

              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                      controller: controller,  // PageController
                      count:  3,
                      effect:ExpandingDotsEffect(
                        // activeStrokeWidth: 2.6,
                        // activeDotScale: 1.3,
                        // maxVisibleDots: 5,
                        expansionFactor: 1.1,
                        radius: 10,
                        spacing: 8,
                        dotHeight: 8,
                        dotWidth: 8,
                        activeDotColor: MyColors.primaryColor,
                        dotColor: Color(0xFF000000).withOpacity(0.3),

                      ),  // your preferred effect
                      onDotClicked: (index){

                      }
                  ),
                  // if (page1())

                  // GestureDetector(
                  //   onTap: (){
                  //       // controller.jumpToPage(1);
                  //   // push(context: context, screen: Select_Type_Page());
                  //   },
                  //   child:Image.asset(
                  //     MyImages.next_btn,
                  //     height: 88,
                  //   ),
                  // ),
                  // RoundEdgedButton(
                  //     text: 'next',
                  //     textColor: Colors.white,
                  //     width: 100,
                  //   onTap: (){
                  //       controller.jumpToPage(1);
                  //   },
                  // ),
                ],
              ),
            ) ,
          ),
        ],
      ),

    );
  }
}
