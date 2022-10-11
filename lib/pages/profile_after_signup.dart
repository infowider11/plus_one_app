import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constants/colors.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/constants/image_urls.dart';
import 'package:oneplus/constants/sized_box.dart';
import 'package:oneplus/functions/global_Var.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/about.dart';
import 'package:oneplus/pages/create_new_post_page.dart';
import 'package:oneplus/pages/edit_profile.dart';
import 'package:oneplus/pages/profile_view_from_posts.dart';
import 'package:oneplus/pages/tab.dart';
import 'package:oneplus/pages/visiter_profile_page.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/appbar.dart';
import 'package:oneplus/widgets/avatar.dart';

import '../services/api_urls.dart';
import '../services/auth.dart';
import '../services/webservices.dart';
import '../widgets/buttons.dart';
import '../widgets/custom_circular_image.dart';

class Profile_After_Signup extends StatefulWidget {
  const Profile_After_Signup({Key? key}) : super(key: key);

  @override
  State<Profile_After_Signup> createState() => _Profile_After_SignupState();
}

bool post = true;
bool list = false;

class _Profile_After_SignupState extends State<Profile_After_Signup> {
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

  get_info() async{
    var id = await getCurrentUserId();
    var res = await Webservices.get('${ApiUrls.get_user_by_id}?user_id=${id}');
    if (res['status'].toString() == '1') {
      user_Data = res['data'];
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: appBar(
        implyLeading:false,
        actions: [],
        titlecenter: true,
        context: context,
        title: 'Profile',
        titleColor: MyColors.paragraphcolor,
        appBarColor: MyColors.primaryColor.withOpacity(0.8),
        // actions: [
        //   TextButton(
        //       onPressed: (){
        //         push(context: context, screen: Create_New_Post_Page());
        //       },
        //       child: ParagraphText(text: '+ Create New Post',)
        //   )
        // ]
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            color: MyColors.primaryColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(
                                  MediaQuery.of(context).size.width / 3),
                              bottomRight: Radius.circular(
                                  MediaQuery.of(context).size.width / 3),
                            )),
                      ),
                      Positioned(
                        top: 10,
                        right: 16,
                        child: Center(
                          child: RoundEdgedButton(
                            onTap: () => push(
                                context: context,
                                screen: Visiters_Profile_Page()),
                            color: MyColors.chipred,
                            isshadow: false,
                            textColor: Colors.white,
                            text: 'View Profile',
                            height: 30,
                            minWidth: 100,
                            fontSize: 14,
                            verticalPadding: 0,
                            horizontalPadding: 0,
                            borderRadius: 6,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30,
                        child: Container(
                          width: width(context),
                          // padding: horizontal_pad,
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Stack(
                                          children: [
                                            CustomCircularImage(
                                             imageUrl: user_Data!['profile_image'],
                                              width: 110,
                                              height: 110,
                                            ),
                                          ],
                                        ),
                                        hSizedBox,
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20.0),
                                              child: ParagraphText(
                                                text: '${user_Data!['city']??''} ${user_Data!['country']??''}',
                                                fontSize: 15,
                                              ),
                                            ),
                                            hSizedBox05,
                                            Image.asset(
                                              user_Data!['country_flag'],
                                              height: 15,
                                            ),
                                            hSizedBox05,
                                            if(user_Data!['gender']=='Male')
                                            Image.asset(
                                              MyImages.maleoutline,
                                              height: 15,
                                            ),
                                            if(user_Data!['gender']=='Female')
                                              Image.asset(
                                                MyImages.femaleoutline,
                                                height: 15,
                                              ),
                                            if(user_Data!['gender']=='Undefined')
                                              Image.asset(
                                                MyImages.unisex,
                                                height: 15,
                                              )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  vSizedBox,
                  Center(
                    child: RoundEdgedButton(
                      text: 'Create Profile',
                      height: 30,
                      minWidth: 145,
                      fontSize: 16,
                      verticalPadding: 0,
                      horizontalPadding: 0,
                      borderRadius: 6,
                      onTap: () async{
                       await push(context: context, screen: Edit_Profile_Page());
                        get_info();
                      },
                    ),
                  ),
                  vSizedBox4,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ParagraphText(
                          text: 'My +1 List',
                          fontSize: 20,
                          fontFamily: 'bold',
                          color: MyColors.black,
                          height: 0.8,
                        ),
                        vSizedBox,
                        ParagraphText(
                          text: 'No contact yet',
                          fontSize: 15,
                          fontFamily: 'regular',
                          color: MyColors.bordercolor,
                          height: 0.8,
                        ),
                        vSizedBox2,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                ParagraphText(
                                  text: 'My +1 List',
                                  fontSize: 20,
                                  fontFamily: 'bold',
                                  color: MyColors.black,
                                  height: 0.8,
                                ),
                                vSizedBox,
                                ParagraphText(
                                  text: 'No contact yet',
                                  fontSize: 15,
                                  fontFamily: 'regular',
                                  color: MyColors.bordercolor,
                                  height: 0.8,
                                ),
                              ],
                            ),
                            TextButton(
                                onPressed: () {
                                  push(
                                      context: context,
                                      screen: Create_New_Post_Page());
                                },
                                child: ParagraphText(
                                  text: '+ Create New Post',
                                  color: MyColors.primaryColor,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: RoundEdgedButton(
                text: 'Continue',
                onTap: () {
                  // push(context: context, screen: Profile_Page());
                  push(context: context, screen: TabsPage());
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
