import 'package:country_picker/country_picker.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:geolocator/geolocator.dart';
import 'package:oneplus/constants/colors.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/functions/global_Var.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/home_page.dart';
import 'package:oneplus/pages/login.dart';
import 'package:oneplus/pages/profile.dart';
import 'package:oneplus/pages/profile_after_signup.dart';
import 'package:oneplus/pages/tab.dart';
import 'package:oneplus/services/api_urls.dart';
import 'package:oneplus/services/auth.dart';
import 'package:oneplus/services/validation.dart';
import 'package:oneplus/services/webservices.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/appbar.dart';
import 'package:oneplus/widgets/customtextfield.dart';
import 'package:oneplus/widgets/showSnackbar.dart';

import '../constants/image_urls.dart';
import '../constants/sized_box.dart';
import '../functions/get_city_and_country_from_latlng.dart';
import '../functions/global_functions.dart';
import '../widgets/buttons.dart';

class Register_Page extends StatefulWidget {
  const Register_Page({Key? key}) : super(key: key);

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController country = TextEditingController();
  String? country_flag;

  final List text = [
    'Female',
    'Male',
    'Undefined',
  ];
  int _selectedIndex = 0;

  getLocation()async{
    if(currentPosition==null){
      currentPosition = await determinePosition();

    }
    print('the location is ${currentPosition?.latitude}');
    var address = await getCityAndCountryFromLatLong(currentPosition!);
    country.text = address.country??'';
    city.text= address.locality??'';
    var flag = CountryPickerUtils.getFlagImageAssetPath(address.isoCountryCode??'IND');
    print('contry flat----$flag');
    country_flag=flag;
    setState(() {

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getLocation();
    super.initState();
  }

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
                MainHeadingText(text: 'Create Account Here'),
                vSizedBox4,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    for(var i=0; i<3; i++)
                    Row(
                      children: [
                        ChoiceChip(
                          labelPadding: i==1? EdgeInsets.symmetric(horizontal: 25, vertical: 5) : EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                          shape: StadiumBorder(
                              side: BorderSide(
                                  color: MyColors.bordercolor
                              )
                          ),
                          backgroundColor: Colors.white,
                          selectedColor: MyColors.primaryColor,
                          selected: _selectedIndex == i,
                          label: Text(text[i]),
                          onSelected: (selected) {
                            if (selected) {
                              setState(() {
                                _selectedIndex = i;
                              });
                            }
                          },
                        ),
                        hSizedBox,
                      ],
                    )
                  ]
                ),
                // ActionChip(
                //   pressElevation: 0,
                //
                //     shape: StadiumBorder(
                //         side: BorderSide(
                //             color: MyColors.bordercolor
                //         )
                //     ),
                //   backgroundColor: MyColors.white,
                //     label: const Text('Aaron Burr'),
                //     onPressed: () {
                //
                //     }
                // ),
                vSizedBox,
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

               GestureDetector(
                 behavior: HitTestBehavior.translucent,
                 onTap: () {
                   _openCountryPickerDialog();
                 },
                 child: CustomTextField(
                   controller: country,
                   prefixIcon: country_flag,
                   enabled: false,
                   hintText: 'Enter Select Country',
                   suffixheight: 20,
                 ),
               ),
                vSizedBox,
               Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                      child: CustomTextField(
                        controller: city,
                        hintText: 'Enter your city',
                        // prefixIcon: MyImages.flag,
                        suffixheight: 20,
                      ),
                  ),
                ],
              ),
            ),

                // SelectState(
                //   onCountryChanged: (value) {
                //     print('country---$value');
                //     setState(() {
                //     });
                //   },
                //   onStateChanged:(value) {
                //     print('state----$value');
                //     setState(() {
                //     });
                //   },
                //   onCityChanged:(value) {
                //     print('city-----$value');
                //     setState(() {
                //     });
                //   },
                //
                // ),
                vSizedBox2,
                RoundEdgedButton(
                  text: 'Join Now',
                  onTap: () async{
                    print('working-----');
                    if(isEmailInvalid(email.text, context)|| isPasswordInvalid(pass.text,context)
                    || isStringInvalid(country.text, 'Please Enter Country.', context)
                        || isStringInvalid(city.text, 'Please Enter City.', context)){

                    } else {
                      Map<String,dynamic> data = {
                        'email':email.text,
                        'password':pass.text,
                        'city':city.text,
                        'country':country.text,
                        'gender':text[_selectedIndex],
                        'country_flag':country_flag,
                      };
                      print('request------$data');
                      await EasyLoading.show(
                        status: null,
                        maskType: EasyLoadingMaskType.black,
                      );
                      var res = await Webservices.postData(apiUrl: ApiUrls.signup, body: data, context: context);
                      print('signup-------$res');
                      EasyLoading.dismiss();
                      if(res['status'].toString()=='1'){
                        user_Data=res['data'];
                        updateUserDetails(res['data']);
                        pushAndPopAll(context: context, screen: Profile_After_Signup());
                        showSnackbar(context, res['message']);
                      } else {
                        showSnackbar(context, res['message']);
                      }
                    }
                    // push(context: context, screen: Profile_After_Signup());
                  },
                ),
                vSizedBox2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ParagraphText(text: 'Already have an Account?'),
                    GestureDetector(
                      onTap: () async{
                        Navigator.pop(context);
                      },
                      child: ParagraphText(text: 'Login Now', fontFamily: 'semibold', color: MyColors.primaryColor,)
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

   _openCountryPickerDialog() => showDialog(
    context: context,
    builder: (context) => Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.pink),
        child: CountryPickerDialog(
            titlePadding: EdgeInsets.all(8.0),
            searchCursorColor: Colors.pinkAccent,
            searchInputDecoration: InputDecoration(hintText: 'Search...'),
            // CountryPickerUtils.getDefaultFlagImage(country),
          isSearchable: true,
            title: Text('Select Country'),
            onValuePicked: (c) {
              print('select country---${c.name}');
              var flag = CountryPickerUtils.getFlagImageAssetPath(c.isoCode);
              print('contry flat----$flag');
              country_flag=flag;
              country.text=c.name;
              setState(() {

              });
            },
          // itemFilter: (c) => ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode),
            priorityList: [
              CountryPickerUtils.getCountryByIsoCode('TR'),
              CountryPickerUtils.getCountryByIsoCode('US'),
            ],
            itemBuilder: (mm){
              return Row(
                children: [
                  CountryPickerUtils.getDefaultFlagImage(mm),
                  hSizedBox,
                  Expanded(child: Text(mm.name,style: TextStyle(),)),
                ],
              );
            }
        )),
  );
}
