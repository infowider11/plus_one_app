
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/image_urls.dart';
import '../functions/navigation_functions.dart';
import 'Services/api_urls.dart';
import 'functions/global_Var.dart';
import 'functions/global_functions.dart';
import 'pages/profile_after_signup.dart';
import 'pages/welcome_page.dart';
import 'services/auth.dart';
import 'services/webservices.dart';

class SplashScreenPage extends StatefulWidget {
  static const String id="splash";
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value){
      check();
    });
  }

  check() async{
    currentPosition = await determinePosition();
    if(await isUserLoggedIn()){
      print('isUserLoggedIn');
      var id = await getCurrentUserId();
      Webservices.get('${ApiUrls.get_user_by_id}?user_id=${id}').then((value) async {
        print('the status is ${value}');
        if (value['status'].toString() == '1') {
          user_Data=value['data'];
          updateUserDetails(value['data']);
          setState(() {

          });
          if(value['data']!=null){
            pushAndPopAll(context: context, screen: Profile_After_Signup());
          }
          else{
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Welcome_Page()));
          }

        }
        else {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Welcome_Page()));
        }
      });
    }
 else{
      print('not logged');
      push(context: context, screen: Welcome_Page()
      );

    }

  }

  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        MyImages.splash,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
