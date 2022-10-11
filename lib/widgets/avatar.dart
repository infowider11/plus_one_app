
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constants/constans.dart';

import '../constants/colors.dart';
import '../constants/image_urls.dart';

class CircleAvatarcustom extends StatelessWidget {

  final String image;
  final Color bgcolor;
  final Color bordercolor;
  final double borderradius;
  final double height;
  final double width;
  final double imgwidth;
  final double imgheight;
  final BoxFit? fit;
  final bool isshadow;



  const CircleAvatarcustom(
      {
        Key? key,
        this. image = MyImages.avatr6,
        this. bgcolor = Colors.white,
        this. bordercolor = Colors.transparent,
        this. borderradius = 50,
        this. height = 70,
        this. width = 70,
        this. imgheight = 30,
        this. imgwidth = 30,
        this.fit = BoxFit.fitHeight,
        this.isshadow = false,
      }

      )
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        border: Border.all(color: bordercolor,),
        borderRadius: BorderRadius.circular(borderradius),
        boxShadow: isshadow ? [shadow]: null,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderradius),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: bgcolor,
            // border: Border.all(color: MyColors.border,),
          ),
          child: Image.asset(
            image,
            fit: fit,
            height: imgheight,
            width: imgwidth,
          ),
        ),
      ),
    );

  }
}
