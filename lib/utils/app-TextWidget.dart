import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:policyapp/utils/app-Color.dart';


Widget text(
  context,
  text,
  size, {
  color = "",
  boldText = "",
  fontFamily = "",
  maxLines = 9,
  textalign,
}) {
  return Text(
    text,
    textAlign: textalign == 'true' ? TextAlign.center : TextAlign.start,
    style: TextStyle(
      color: color == "" ? AppColors.defaultTextColor : color,
      fontSize: size,
      fontWeight: boldText == "" ? FontWeight.w400 : boldText,
      fontFamily: fontFamily == "" ? 'Poppins-Medium' : fontFamily,
     
    ),
    maxLines: maxLines,
  );
}


Widget textwithShadow(
  context,
  text,
  size, {
  color = "",
  boldText = "",
  fontFamily = "",
  maxLines = 9,
  textalign,
}) {
  return Text(
    text,
    textAlign: textalign == 'true' ? TextAlign.center : TextAlign.start,
    style: TextStyle(
      color: color == "" ? AppColors.defaultTextColor : color,
      fontSize: size,
      fontWeight: boldText == "" ? FontWeight.w400 : boldText,
      fontFamily: fontFamily == "" ? 'Poppins-Medium' : fontFamily,
      shadows: [
        Shadow(
          offset: const Offset(0, 2),
          blurRadius: 7.r,
          color: Colors.black.withOpacity(0.7),
        ),
      ],
    ),
    maxLines: maxLines,
  );
}



Widget appBarTitle(context, text, size,
    {color = "", boldText = "", fontFamily = "", maxLines = 9}) {
  return Stack(
    children: <Widget>[
      // Stroked text as border.
      Text(
        text,
        style: TextStyle(
          fontFamily: fontFamily == "" ? 'Poppins-Medium' : fontFamily,
          fontSize: size,
          fontWeight: boldText == "" ? FontWeight.w400 : boldText,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 3
            ..color = Colors.grey.withOpacity(0.2),
        ),
      ),
      // Solid text as fill.
      Text(
        text,
        style: TextStyle(
          letterSpacing: 0.6,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily == "" ? 'Poppins-Medium' : fontFamily,
          fontSize: size,
          color: AppColors.whiteColor,
        ),
      ),
    ],
  );
}


