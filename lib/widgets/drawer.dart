import 'package:flutter/material.dart';
import 'package:oneplus/constants/colors.dart';
import 'package:oneplus/functions/global_Var.dart';
import 'package:oneplus/pages/about.dart';
import 'package:oneplus/pages/chat.dart';
import 'package:oneplus/pages/event_calender_page.dart';
import 'package:oneplus/pages/home_page.dart';
import 'package:oneplus/pages/login.dart';
import 'package:oneplus/pages/mylist.dart';
import 'package:oneplus/pages/notifications_page.dart';
import 'package:oneplus/pages/profile.dart';
import 'package:oneplus/pages/register_page.dart';
import 'package:oneplus/pages/settings_page.dart';
import 'package:oneplus/pages/tab.dart';
import 'package:oneplus/services/auth.dart';
import 'package:oneplus/widgets/avatar.dart';
import 'package:oneplus/widgets/custom_circular_image.dart';
import '../constants/image_urls.dart';
import '../constants/sized_box.dart';
import '../functions/navigation_functions.dart';
import '../pages/changePassword.dart';
import '../pages/privacy.dart';
import '../pages/terms.dart';
import '../pages/visiter_profile_page.dart';
import '../widgets/CustomTexts.dart';

Drawer get_drawer(BuildContext context){

  return Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    backgroundColor: MyColors.primaryColor,
    child: Stack(
      children: [
        SingleChildScrollView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSizedBox6,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: CustomCircularImage(
                        imageUrl: user_Data!['profile_image'],
                        width: 110,
                        height: 110,
                      ),
                    ), hSizedBox2,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ParagraphText(text: '${user_Data!['name']??''}', fontSize: 35, fontFamily: 'semibold',),

                        ],
                      ),
                    ),
                  ],
                ),
              ),

              vSizedBox,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(color: Colors.white,),
              ),

              vSizedBox2,
              GestureDetector(
                onTap: (){
                  push(context: context, screen: TabsPage());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        MyImages.home,
                        color: MyColors.white,
                        height: 28,
                      ),
                      hSizedBox,
                      ParagraphText(text: 'Home',color: MyColors.white, fontSize: 24,)
                    ],
                  ),
                ),
              ),

              vSizedBox,
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  push(context: context, screen: ChangePasswordPage());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        MyImages.settings_line,
                        color: MyColors.white,
                        height: 28,
                      ),
                      hSizedBox,
                      ParagraphText(text: 'Change Password',color: MyColors.white, fontSize: 24,)
                    ],
                  ),
                ),
              ),

              vSizedBox,
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                  push(context: context, screen: Visiters_Profile_Page());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        MyImages.useravatar,
                        color: MyColors.white,
                        height: 28,
                        width: 28,
                      ),
                      hSizedBox,
                      ParagraphText(text: 'My Profile',color: MyColors.white, fontSize: 24,)
                    ],
                  ),
                ),
              ),

              vSizedBox,
              GestureDetector(
                onTap: (){
                  push(context: context, screen: Mylist_Page());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        MyImages.terms_condition,
                        color: MyColors.white,
                        height: 28,
                        width: 28,
                      ),
                      hSizedBox,
                      ParagraphText(text: 'My +1 List',color: MyColors.white, fontSize: 24,)
                    ],
                  ),
                ),
              ),

              vSizedBox,
              GestureDetector(
                onTap: (){
                  push(context: context, screen: Event_Calender_Page());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        MyImages.event,
                        color: MyColors.white,
                        height: 28,
                        width: 28,
                      ),
                      hSizedBox,
                      ParagraphText(text: 'Events',color: MyColors.white, fontSize: 24,)
                    ],
                  ),
                ),
              ),

              vSizedBox,
              GestureDetector(
                onTap: (){
                  push(context: context, screen: ChatDetail());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        MyImages.message,
                        color: MyColors.white,
                        height: 28,
                        width: 28,
                      ),
                      hSizedBox,
                      ParagraphText(text: 'Messages',color: MyColors.white, fontSize: 24,)
                    ],
                  ),
                ),
              ),

              vSizedBox,
              GestureDetector(
                onTap: (){
                  push(context: context, screen: Notifications_Page());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        MyImages.notification,
                        color: MyColors.white,
                        height: 28,
                        width: 28,
                      ),
                      hSizedBox,
                      ParagraphText(text: 'Notifications',color: MyColors.white, fontSize: 24,)
                    ],
                  ),
                ),
              ),

              vSizedBox,
              GestureDetector(
                onTap: (){
                  push(context: context, screen: About_Us_Page());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        MyImages.info_icon,
                        color: MyColors.white,
                        height: 28,
                        width: 28,
                      ),
                      hSizedBox,
                      ParagraphText(text: 'About us',color: MyColors.white, fontSize: 24,)
                    ],
                  ),
                ),
              ),

              vSizedBox,
              GestureDetector(
                onTap: (){
                  push(context: context, screen: Settings_Page());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        MyImages.settings_line,
                        color: MyColors.white,
                        height: 28,
                      ),
                      hSizedBox,
                      ParagraphText(text: 'Settings',color: MyColors.white, fontSize: 24,)
                    ],
                  ),
                ),
              ),

              vSizedBox,
              GestureDetector(
                onTap: (){
                  push(context: context, screen: Terms_Page());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        MyImages.terms_condition,
                        color: MyColors.white,
                        height: 28,
                        width: 28,
                      ),
                      hSizedBox,
                      ParagraphText(text: 'Terms & Conditions',color: MyColors.white, fontSize: 24,)
                    ],
                  ),
                ),
              ),

              vSizedBox,
              GestureDetector(
                onTap: (){
                  push(context: context, screen: Privacy_Page());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        MyImages.privacy_policy,
                        color: MyColors.white,
                        height: 28,
                        width: 28,
                      ),
                      hSizedBox,
                      ParagraphText(text: 'Privacy Policy',color: MyColors.white, fontSize: 24,)
                    ],
                  ),
                ),
              ),

              vSizedBox,
              GestureDetector(
                onTap: () async{
                  Navigator.pop(context);
                  showDialog(
                      context: context,
                      builder: (context1) {
                        return AlertDialog(
                          title: Text(
                            'Logout',
                          ),
                          content: Text('Are you sure, want to logout?'),
                          actions: [
                            TextButton(
                                onPressed: () async {
                                  await logout();
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LoginPage()),
                                          (Route<dynamic> route) => false);
                                },
                                child: Text('logout')),
                            TextButton(
                                onPressed: () async {
                                  Navigator.pop(context1);
                                },
                                child: Text('cancel')),
                          ],
                        );
                      });
                  // await logout();
                  // pushAndPopAll(context: context, screen: Register_Page());
                  // push(context: context, screen: Register_Page());
                },
                child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        MyImages.logout,
                        color: MyColors.white,
                        height: 28,
                        width: 28,
                      ),
                      hSizedBox,
                      ParagraphText(text: 'Logout',color: MyColors.white, fontSize: 24,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
                  child: ParagraphText(
                    text: '+1',
                    fontSize: 30,
                    fontFamily: 'bold',
                    textAlign: TextAlign.center,
                    color: MyColors.white,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );

}