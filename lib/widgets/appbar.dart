
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'CustomTexts.dart';

AppBar appBar(
    {String? title,
      // bool? leading=true,
      Color appBarColor = MyColors.primaryColor,
      Color titleColor = Colors.white,
      bool implyLeading = true,
      IconData backIcon = Icons.arrow_back_outlined,
      double fontsize = 20,
      double size = 16,
      // double toolbarHeight = 50,
      String badge = '0',
      String fontfamily = 'semibold',
      bool titlecenter = true,
      required BuildContext context,
      List<Widget>? actions, leading}) {
  return AppBar(
    // toolbarHeight: toolbarHeight,
    automaticallyImplyLeading: false,
    backgroundColor: appBarColor,
    elevation: 0,
    centerTitle: titlecenter,
    title: title == null
        ? null
        : Transform.translate(
      offset: Offset(-15, 0),
          child: AppBarHeadingText(
            text: title,
            color: titleColor,
            fontSize: fontsize,
            fontFamily: fontfamily,
          ),
        ),
    leading: implyLeading
        ? IconButton(
      visualDensity: VisualDensity(horizontal: 0),
        icon:
        Icon(
         backIcon,
          color: titleColor,
          size: size,
        ),
      onPressed: () {
        Navigator.pop(context);
      },
    )
        : leading,
    actions: actions,
  );
}