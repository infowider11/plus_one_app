import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../constants/colors.dart';
import '../constants/image_urls.dart';
import '../constants/sized_box.dart';
import '../services/api_urls.dart';
import '../services/auth.dart';
import '../services/validation.dart';
import '../services/webservices.dart';
import '../widgets/appbar.dart';
import '../widgets/buttons.dart';
import '../widgets/customtextfield.dart';
import '../widgets/loader.dart';
import '../widgets/showSnackbar.dart';
class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  TextEditingController oldpassword=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController cpassword=TextEditingController();
  bool load=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        titlecenter: false,
        context: context,
        title: 'Change Password',
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
      body:SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(

          children: [
            vSizedBox4,
            CustomTextField(
              controller: oldpassword,
              obscureText: true,
              hintText: '**********',
              prefixIcon: MyImages.password,
              label: 'Current Password',
              labelfont: 12,
              labelcolor: MyColors.paragraphcolor,
              bgColor: Colors.transparent,
              fontsize: 16,
              hintcolor: MyColors.headingcolor,
              suffixheight: 18,
            ),
            vSizedBox4,
            CustomTextField(
              controller: password,
              obscureText: true,
              hintText: '**********',
              prefixIcon: MyImages.password,
              label: 'New Password',
              labelfont: 12,
              labelcolor: MyColors.paragraphcolor,
              bgColor: Colors.transparent,
              fontsize: 16,
              hintcolor: MyColors.headingcolor,
              suffixheight: 18,
            ),
            vSizedBox4,
            CustomTextField(
              controller: cpassword,
              obscureText: true,
              hintText: '**********',
              prefixIcon: MyImages.password,
              // showlabeltop: true,
              label: 'Confirm Password',
              labelfont: 12,
              labelcolor: MyColors.paragraphcolor,
              bgColor: Colors.transparent,
              fontsize: 16,
              hintcolor: MyColors.headingcolor,
              suffixheight: 18,
            ),
            vSizedBox4,

            vSizedBox4,
            RoundEdgedButton(
                text: 'Update',
                onTap: () async {
                  if (oldpassword.text == '') {
                    showSnackbar(context, 'Please Enter your Password.');
                  }else if(password.text == ''){
                    showSnackbar(context, 'Please Enter your New Password.');

                  }  else if (cpassword.text=='') {
                    showSnackbar(context, 'Please Enter your Confirm Password.');

                  }   else if(cpassword.text!=password.text){
                    showSnackbar(context, 'Confirm Password and New password should be same.');

                  }
                  else{
                    Map<String, dynamic> data = {
                      'user_password':oldpassword.text,
                      'new_password':password.text,
                      'confirm_password':cpassword.text,
                      'user_id': await getCurrentUserId()

                    } ;
                    await EasyLoading.show(
                      status: null,
                      maskType: EasyLoadingMaskType.black,
                    );
                    setState(() {
                      load=true;
                    });
                    var res = await Webservices.postData(apiUrl: ApiUrls.change_password, body: data, context: context,showSuccessMessage: true);
                    await EasyLoading.dismiss();

                    setState(() {
                      load=false;
                    });
                    if(res['status'].toString()=='1'){
                      showSnackbar(context, res['message']);
                      Navigator.pop(context);
                    }
                    else{
                      showSnackbar(context, res['message']);
                    }
                  };

                }),
          ],
        ),
      ),
    );
  }
}
