import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:oneplus/constants/colors.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/home_page.dart';
import 'package:oneplus/pages/profile.dart';
import 'package:oneplus/pages/profile_after_signup.dart';
import 'package:oneplus/pages/tab.dart';
import 'package:oneplus/services/api_urls.dart';
import 'package:oneplus/services/validation.dart';
import 'package:oneplus/services/webservices.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/appbar.dart';
import 'package:oneplus/widgets/customtextfield.dart';
import 'package:oneplus/widgets/showSnackbar.dart';

import '../constants/image_urls.dart';
import '../constants/sized_box.dart';
import '../widgets/buttons.dart';
import 'login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
        appBar: appBar(context: context, appBarColor: Colors.transparent),
        body: SingleChildScrollView(
          child: Container(
            padding: horizontal_pad + EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // vSizedBox6,
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Image.asset(
                    MyImages.welcome_profiles,
                    height: 350,
                  )
                ),
                vSizedBox2,
                MainHeadingText(text: 'Forgot Password'),
                vSizedBox4,
                CustomTextField(
                  controller: email,
                  hintText: 'Email Address',
                  prefixIcon: MyImages.email,
                  suffixheight: 15,
                ),
                vSizedBox2,
                RoundEdgedButton(
                  text: 'Send Email',
                  onTap: () async{
                    if(validateEmail(email.text, context)==null){
                      Map<String,dynamic> data = {
                        'email':email.text,
                      };
                      await EasyLoading.show(
                        status: null,
                        maskType: EasyLoadingMaskType.black,
                      );
                      var res = await Webservices.get(ApiUrls.forgot+'?email='+email.text);
                      print('res-----$res');
                      EasyLoading.dismiss();
                      if(res['status'].toString()=='1'){
                        Navigator.pop(context);
                        showSnackbar(context, res['message']);
                      } else {
                        showSnackbar(context, res['message']);
                      }
                    }
                    // push(context: context, screen: Profile_Page());
                    // push(context: context, screen: Profile_After_Signup());
                  },
                ),
                vSizedBox2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ParagraphText(text: 'Back to login'),
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: ParagraphText(text: 'Here', fontFamily: 'semibold',color: MyColors.primaryColor,)
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
