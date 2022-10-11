import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:oneplus/constants/colors.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/forgot-password.dart';
import 'package:oneplus/pages/home_page.dart';
import 'package:oneplus/pages/profile.dart';
import 'package:oneplus/pages/profile_after_signup.dart';
import 'package:oneplus/pages/register_page.dart';
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
import '../functions/global_Var.dart';
import '../services/auth.dart';
import '../widgets/buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final List text = [
    'Female',
    'Male',
    'Undefined',
  ];
  int _selectedIndex = 0;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

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
                    )),
                vSizedBox2,
                MainHeadingText(text: 'Welcome Back!'),
                vSizedBox4,
                CustomTextField(
                  controller: email,
                  hintText: 'Email Address',
                  prefixIcon: MyImages.email,
                  suffixheight: 15,
                ),
                vSizedBox,
                CustomTextField(
                  controller: pass,
                  hintText: 'Enter your password',
                  prefixIcon: MyImages.password,
                  obscureText: true,
                  suffixheight: 20,
                ),
                vSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () =>
                          push(context: context, screen: ForgotPassword()),
                      child: MainHeadingText(
                          text: 'Forgot Password?',
                          fontFamily: 'regular',
                          fontSize: 14),
                    )
                  ],
                ),
                vSizedBox2,
                RoundEdgedButton(
                  text: 'Login Now',
                  onTap: () async {
                    if (validateEmail(email.text, context) == null
                        ||
                        validateString(
                            pass.text, 'Please Enter Password.', context) ==
                            null) {
                      Map<String, dynamic> data = {
                        'email': email.text,
                        'password': pass.text,
                      };
                      await EasyLoading.show(
                          status: null,
                          maskType: EasyLoadingMaskType.black
                      );
                      var res = await Webservices.postData(
                          apiUrl: ApiUrls.login, body: data, context: context);
                      print('login----$res');
                      EasyLoading.dismiss();

                      if (res['status'].toString() == '1') {
                        user_Data = res['data'];
                        updateUserDetails(res['data']);
                        pushAndPopAll(
                            context: context, screen: Profile_After_Signup());
                        showSnackbar(context, res['message']);
                      } else {
                        showSnackbar(context, res['message']);
                      }
                      // push(context: context, screen: Profile_Page());
                    }
                  }// push(context: context, screen: TabsPage());
                ),
                vSizedBox2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ParagraphText(text: 'Does not have an Account? '),
                    GestureDetector(
                        onTap: () =>
                            push(context: context, screen: Register_Page()),
                        child: ParagraphText(
                          text: 'Create Here',
                          fontFamily: 'semibold',
                          color: MyColors.primaryColor,
                        )),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
