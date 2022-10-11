import 'dart:io';

import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';
import 'package:oneplus/constants/colors.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/functions/global_Var.dart';
import 'package:oneplus/functions/navigation_functions.dart';
import 'package:oneplus/pages/profile.dart';
import 'package:oneplus/services/auth.dart';
import 'package:oneplus/services/validation.dart';
import 'package:oneplus/widgets/CustomTexts.dart';
import 'package:oneplus/widgets/appbar.dart';
import 'package:oneplus/widgets/avatar.dart';
import 'package:oneplus/widgets/custom_circular_image.dart';
import 'package:oneplus/widgets/customtextfield.dart';
import 'package:oneplus/widgets/loader.dart';
import 'package:oneplus/widgets/showSnackbar.dart';
import '../constants/image_urls.dart';
import '../constants/sized_box.dart';
import '../services/api_urls.dart';
import '../services/image_picker.dart';
import '../services/webservices.dart';
import '../widgets/buttons.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/customdropdown.dart';

enum SingingCharacter { lafayette, jefferson }

class Edit_Profile_Page extends StatefulWidget {
  const Edit_Profile_Page({Key? key}) : super(key: key);

  @override
  State<Edit_Profile_Page> createState() => _Edit_Profile_PageState();
}

class _Edit_Profile_PageState extends State<Edit_Profile_Page> {
  TextEditingController email = TextEditingController();
  TextEditingController uname = TextEditingController();
  TextEditingController fname = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController pre = TextEditingController();
  TextEditingController headline = TextEditingController();
  TextEditingController about = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController country = TextEditingController();
  String? country_flag;
  SingingCharacter? _character = SingingCharacter.lafayette;
  Map? user_info = {};
  Map? select_pre = {};
  String? pre_id;
  bool load = false;
  File? profile_image;
  List prefrences = [];
  String? prefrence_image;

  final List text = [
    'Female',
    'Male',
    'Undefined',
  ];
  int _selectedIndex = 0;

  get_prefrence() async {
    var res = await Webservices.getList(ApiUrls.preference_list);
    print('prefrences-----$res');
    prefrences = res;
    setState(() {});
  }

  get_info() async {
    setState(() {
      load = true;
    });
    var id = await getCurrentUserId();
    var res = await Webservices.get('${ApiUrls.get_user_by_id}?user_id=${id}');
    print('user info-----$res');
    if (res['status'].toString() == '1') {
      user_info = res['data'];
      email.text = user_info!['email'];
      fname.text = user_info!['full_name'];
      uname.text = user_info!['username'];
      _selectedIndex = user_info!['gender'] == 'Female'
          ? 0
          : user_info!['gender'] == 'Male'
              ? 1
              : 2;
      _character = user_info!['profile_display'].toString() == '1'
          ? SingingCharacter.lafayette
          : SingingCharacter.jefferson;
      dob.text = user_info!['dob'];
      pre_id = user_info!['preference'];
      headline.text = user_info!['heading'];
      about.text = user_info!['about'];
      city.text = user_info!['city'];
      country.text = user_info!['country'];
      country_flag = user_info!['country_flag'];
      prefrence_image=user_info!['preference_data']['icon'];
      setState(() {});
      get_prefrence();
    }
    setState(() {
      load = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get_info();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.white,
        appBar: appBar(
            context: context,
            appBarColor: MyColors.fadeprimary,
            title: 'Edit Profile',
            titleColor: MyColors.paragraphcolor,
            titlecenter: false),
        body: load
            ? CustomLoader()
            : SingleChildScrollView(
                child: Container(
                  padding:
                      horizontal_pad + EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      vSizedBox2,
                      Center(
                        child: Stack(
                          children: [
                            profile_image != null
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.file(
                                      profile_image!,
                                      width: 100,
                                      height: 100,
                                    ),
                                  )
                                : CustomCircularImage(
                                    imageUrl: user_info!['profile_image'],
                                    height: 100,
                                    width: 100,
                                  ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: () async {
                                    _showImage_popup(context);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: MyColors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [shadow]),
                                    child: Center(
                                      child: Image.asset(
                                        MyImages.camera,
                                        height: 15,
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      vSizedBox,
                      CustomTextField(
                        controller: email,
                        hintText: 'Email',
                        enabled: false,
                        prefixIcon: MyImages.email,
                        suffixheight: 15,
                      ),
                      vSizedBox,
                      CustomTextField(
                        controller: uname,
                        hintText: 'Username',
                        prefixIcon: MyImages.noteedit,
                        suffixheight: 15,
                      ),

                      vSizedBox,
                      CustomTextField(
                        controller: fname,
                        hintText: 'full Name',
                        prefixIcon: MyImages.user,
                        suffixheight: 15,
                      ),
                      vSizedBox,
                      ParagraphText(
                        text: 'Choose Profile Display Name',
                        fontSize: 16,
                      ),
                      // vSizedBox,
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<SingingCharacter>(
                                activeColor: MyColors.primaryColor,
                                visualDensity: VisualDensity(horizontal: -4),
                                value: SingingCharacter.lafayette,
                                groupValue: _character,
                                onChanged: (SingingCharacter? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                              // hSizedBox05,
                              ParagraphText(
                                text: 'Username',
                                fontSize: 14,
                                color:
                                    MyColors.paragraphcolor.withOpacity(0.50),
                              )
                            ],
                          ),
                          hSizedBox2,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<SingingCharacter>(
                                activeColor: MyColors.primaryColor,
                                visualDensity: VisualDensity(horizontal: -4),
                                value: SingingCharacter.jefferson,
                                groupValue: _character,
                                onChanged: (SingingCharacter? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                              // hSizedBox05,
                              ParagraphText(
                                text: 'Full Name',
                                fontSize: 14,
                                color:
                                    MyColors.paragraphcolor.withOpacity(0.50),
                              )
                            ],
                          ),
                        ],
                      ),
                      vSizedBox,
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            for (var i = 0; i < 3; i++)
                              Row(
                                children: [
                                  ChoiceChip(
                                    labelPadding: i == 1
                                        ? EdgeInsets.symmetric(
                                            horizontal: 25, vertical: 5)
                                        : EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 5),
                                    shape: StadiumBorder(
                                        side: BorderSide(
                                            color: MyColors.bordercolor)),
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
                          ]),

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
                      CustomTextField(
                        controller: city,
                        hintText: 'Enter Your City',
                        suffixheight: 20,
                      ),
                      vSizedBox,
                      GestureDetector(
                        onTap: () async {
                          var m = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(DateTime.now().year - 150),
                              lastDate: DateTime.now());
                          if (m != null) {
                            DateFormat formatter = DateFormat('yyyy-MM-dd');
                            String formatted = formatter.format(m);
                            dob.text = formatted;
                            // print('checking date------${formatted}');
                          }
                        },
                        child: CustomTextField(
                          controller: dob,
                          enabled: false,
                          hintText: 'Date of Birth',
                          prefixIcon: MyImages.birthday_cake,
                          suffixIcon: MyImages.event,
                          suffixheight: 15,
                        ),
                      ),
                      vSizedBox,
                      CustomTextField(
                        controller: pre,
                        hintText: 'Select your prefrence',
                        prefixIcon: MyImages.select,
                        suffixheight: 20,
                      ),
                      vSizedBox,
                      Row(
                        children: [
                          if (prefrence_image != null)
                            Expanded(
                                flex: 2,
                                child: CustomCircularImage(
                                  imageUrl: prefrence_image!,
                                  width: 50,
                                  height: 50,
                                )),
                          hSizedBox05,
                          Expanded(
                            flex: 10,
                            child: Container(
                              padding: EdgeInsets.all(0),
                              margin: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  border: Border.all(
                                      color: MyColors.blackcolor70, width: 1)),
                              child: CustomDropdownButton(
                                margin: 0,
                                items: prefrences,
                                text: '',
                                hint: 'Select your prefrence',
                                selectedItem: user_info!['preference_data']??'',
                                itemMapKey: 'name',
                                onChanged: ((dynamic value) {
                                  print('value-----$value');
                                  prefrence_image = value['icon'];
                                  pre_id=value['id'].toString();
                                  setState(() {});
                                }),
                              ),
                            ),
                          )
                        ],
                      ),

                      vSizedBox2,

                      vSizedBox,
                      CustomTextField(
                        controller: headline,
                        hintText: 'Add a Catchy Headline',
                        maxLines: 2,
                        borderradius: 16,
                      ),
                      vSizedBox,
                      CustomTextField(
                        controller: about,
                        hintText: 'Write Something About Yourself',
                        maxLines: 4,
                        borderradius: 16,
                      ),
                      vSizedBox4,
                      Center(
                        child: RoundEdgedButton(
                          borderRadius: 10,
                          fontSize: 16,
                          text: 'Update',
                          minWidth: 150,
                          color: MyColors.fadeprimary,
                          onTap: () async {
                            if (isStringInvalid(uname.text,
                                    'Please Enter Username.', context) ||
                                isStringInvalid(fname.text,
                                    'Please Enter Fullname.', context) ||
                                isStringInvalid(country.text,
                                    'Please Enter Country.', context) ||
                                isStringInvalid(
                                    city.text, 'Please Enter City.', context) ||
                                isStringInvalid(dob.text,
                                    'Please Enter Dath of Birth.', context) ||
                                isStringInvalid(pre_id,
                                    'Please Enter Prefrence.', context) ||
                                isStringInvalid(headline.text,
                                    'Please Enter Headline.', context) ||
                                isStringInvalid(about.text,
                                    'Please Enter About Yourself.', context)) {
                            } else {
                              Map<String, dynamic> files = {};
                              Map<String, dynamic> data = {
                                'user_id': await getCurrentUserId(),
                                'email': email.text,
                                'gender': text[_selectedIndex],
                                'city': city.text,
                                'country': country.text,
                                'country_flag': country_flag,
                                'dob': dob.text,
                                'username': uname.text,
                                'full_name': fname.text,
                                'about': about.text,
                                'preference': pre_id.toString(),//pre.text,
                                'profile_display':
                                    _character == SingingCharacter.lafayette
                                        ? '1'
                                        : '2',
                                'heading': headline.text,
                                'about': about.text,
                              };
                              if (profile_image != null) {
                                files['profile_image'] = profile_image;
                              }
                              await EasyLoading.show(
                                  status: null,
                                  maskType: EasyLoadingMaskType.black);
                              var res =
                                  await Webservices.postDataWithImageFunction(
                                      body: data,
                                      files: files,
                                      context: context,
                                      apiUrl: ApiUrls.edit_profile);
                              EasyLoading.dismiss();
                              print('edit profile-----$res');
                              if (res['status'].toString() == '1') {
                                updateUserDetails(res['data']);
                                user_Data = res['data'];
                                setState(() {});
                                Navigator.pop(context);
                                showSnackbar(context, res['message']);
                              } else {
                                showSnackbar(context, res['message']);
                              }
                            }
                            // push(context: context, screen: Profile_Page());
                          },
                        ),
                      ),
                      vSizedBox4,
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
                  var flag =
                      CountryPickerUtils.getFlagImageAssetPath(c.isoCode);
                  print('contry flat----$flag');
                  country_flag = flag;
                  country.text = c.name;
                  setState(() {});
                },
                // itemFilter: (c) => ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode),
                priorityList: [
                  CountryPickerUtils.getCountryByIsoCode('TR'),
                  CountryPickerUtils.getCountryByIsoCode('US'),
                ],
                itemBuilder: (mm) {
                  return Row(
                    children: [
                      CountryPickerUtils.getDefaultFlagImage(mm),
                      hSizedBox,
                      Expanded(
                          child: Text(
                        mm.name,
                        style: TextStyle(),
                      )),
                    ],
                  );
                })),
      );

  void _showImage_popup(
    BuildContext ctx,
  ) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => CupertinoActionSheet(
              actions: [
                CupertinoActionSheetAction(
                    onPressed: () async {
                      File? image;
                      image = await pickImage(false);
                      print('image----$image');
                      if (image != null) {
                        profile_image = image;
                        setState(() {});
                      }
                      _close(ctx);
                    },
                    child: const Text('Take a picture')),
                CupertinoActionSheetAction(
                    onPressed: () async {
                      File? image;
                      image = await pickImage(true);
                      print('image----$image');
                      ;
                      if (image != null) {
                        profile_image = image;
                        setState(() {});
                      }
                      _close(ctx);
                    },
                    child: const Text('Gallery')),
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () => _close(ctx),
                child: const Text('Close'),
              ),
            ));
  }

  void _close(BuildContext ctx) {
    Navigator.of(ctx).pop();
  }
}
