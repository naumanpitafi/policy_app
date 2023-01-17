import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app-Color.dart';
import '../utils/app-TextWidget.dart';

class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget(
      {
      required this.height,
      required this.width,
      required this.onfunTap,
      required this.color,
      required this.buttonText});
  void Function()? onfunTap;
  
  final double height;
  final double width;
  final Color color;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onfunTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Align(
          alignment: Alignment.center,
          child: text(
            context,
            buttonText,
            16.sp,
            fontFamily: 'Poppins-SemiBold',
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
