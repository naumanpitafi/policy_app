import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:policyapp/utils/app-Color.dart';
import 'package:policyapp/utils/app-TextWidget.dart';

class CustomIconButtomWidget extends StatelessWidget {
  void Function()? onfunTap;
  final String imageString;
  final double height;
  final double width;
  final Color color;
  final String buttonText;

  CustomIconButtomWidget({
    Key? key,
    required this.imageString,
    required this.height,
    required this.width,
    required this.onfunTap,
    required this.color,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onfunTap,
      child: Container(
        height: height, width: width,
        // margin: EdgeInsets.only(left: 24.w, right: 24.w),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 20.w, right: 15.w),
                child: SizedBox(
                    height: 18.h,
                    width: 20,
                    child: Image(image: AssetImage(imageString)))),
            text(
              context,
              buttonText,
              14.sp,
              fontFamily: 'Poppins-SemiBold',
              color: AppColors.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
