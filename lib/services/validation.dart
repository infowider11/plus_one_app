// import 'package:ecare/widgets/showSnackbar.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/showSnackbar.dart';

String? validateString(String? str, String message, BuildContext context) {
  String? value = (str == null) ? "" : str.trim();
  if (value == null || value == '') {
    showSnackbar(context, message);
    return "err";
  } else {
    return null;
  }
}

String? validateEmail(String email, BuildContext context) {
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  if (emailValid == false || email == null) {
    showSnackbar(context, "Enter your valid email!");
    return 'Enter a valid email address';
  } else
    return null;
}

// bool isPasswordInvalid(String password, BuildContext context,
//     {bool strongPassword = false}) {
//   if (password == '') {
//     showSnackbar(context, 'Password Field is required!');
//     return true;
//   } else if (password.length < 6) {
//     showSnackbar(context, 'Password Should Have Atleast 6 Characters.');
//     return true;
//   } else {
//     return false;
//   }
// }

bool isEmailInvalid(String email, BuildContext context) {
  if (email == '') {
    showSnackbar(context, 'Email Field Cannot Be Empty!');
    return true;
  }
  if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email)) {
    showSnackbar(context, 'Please type a valid email address');
    return true;
  }
  return false;
}

bool isPasswordInvalid(String password, BuildContext context,
    {bool strongPassword = false}) {
  if (password == '') {
    showSnackbar(context, 'Password Field is required!');
    return true;
  } else if (password.length < 6) {
    showSnackbar(context, 'Password Should Have Atleast 6 Characters.');
    return true;
  } else {
    return false;
  }
}

bool isPasswordMatched(String password, String cpassword, BuildContext context,
    {bool strongPassword = false}) {
  if (password != cpassword) {
    showSnackbar(context, 'Password and Confirm password should be same.');
    return true;
  } else {
    return false;
  }
}

bool isPhoneNumberInvalid(String phoneNumber, BuildContext context,
    {bool strongValidation = false}) {
  if (phoneNumber == '') {
    showSnackbar(context, 'Phone Number Field is required!');
    return true;
  } else if (phoneNumber.length < 8) {
    showSnackbar(context, 'Please Type A Valid Phone Number');
    return true;
  } else {
    return false;
  }
}

bool isStringInvalid(String? phoneNumber, String message,BuildContext context) {
  if (phoneNumber == '' || phoneNumber == null) {
    showSnackbar(context,message);
    return true;
  } else {
    return false;
  }
}
