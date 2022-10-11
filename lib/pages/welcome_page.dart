import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constants/image_urls.dart';
import 'package:oneplus/constants/sized_box.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/login.dart';
import 'package:oneplus/pages/register_page.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/buttons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/colors.dart';

class Welcome_Page extends StatefulWidget {
  const Welcome_Page({Key? key}) : super(key: key);

  @override
  State<Welcome_Page> createState() => _Welcome_PageState();
}

class _Welcome_PageState extends State<Welcome_Page> {
  PageController controller = PageController();

  page1(){
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                MyImages.welcome_back,
              ),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topLeft
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          vSizedBox4,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, ),
              child: Image.asset(
                MyImages.welcome_profiles,
                height: 350,
              )
          ),
          vSizedBox2,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              headingText(text: 'Find your', fontSize: 35,),
              hSizedBox,
              Image.asset(MyImages.plusone, height: 40,)
            ],
          ),
          vSizedBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ParagraphText(
              text: ' Are you the odd one out; the person all by his or herself on the cold marble dance floor or the one stuck at the “leftovers” table for not fitting into the even-numbered seating arrangement of a table of ten?',
              fontSize: 18,
              textAlign: TextAlign.center,
            ),
          ),
           vSizedBox,
           ParagraphText(
               text: 'Let\'s make sure that doesn\'t happen to you.',
               fontSize: 16,
               fontFamily: 'italic',
           ),
          vSizedBox2,
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: RoundEdgedButton(
              text: 'Yes! Get me started',
              onTap: (){
                push(context: context, screen: LoginPage());
              },
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              PageView.builder(
                // physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                controller: controller,
                itemBuilder: (context, index){
                  switch(index){
                    case 0: return page1();
                    case 1: return page1();
                    case 2: return page1();
                    default: return page1();
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
                          effect: ExpandingDotsEffect(
                            // activeStrokeWidth: 2.6,
                            // activeDotScale: 1.3,
                            // maxVisibleDots: 5,
                            radius: 10,
                            spacing: 8,
                            dotHeight: 4,
                            dotWidth: 15,
                            activeDotColor: MyColors.primaryColor,
                            dotColor: Color(0xFF000000).withOpacity(0.7),

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
        ),
      ),
    );
  }
}
