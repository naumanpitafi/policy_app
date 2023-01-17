import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:policyapp/widgets/customIconButtonWidget.dart';

import '../../utils/app-Color.dart';
import '../../utils/app-Images.dart';
import '../../utils/app-Routes.dart';
import '../../utils/app-TextWidget.dart';

class VerifyManuallyScreen extends StatefulWidget {
  const VerifyManuallyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyManuallyScreen> createState() => _VerifyManuallyScreenState();
}

class _VerifyManuallyScreenState extends State<VerifyManuallyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.primaryColor,
        title: appBarTitle(
          context,
          'Policy Verification',
          18.sp,
        ),
        flexibleSpace: Padding(
          padding: EdgeInsets.only(
            left: 90.w,
          ),
          child: Image.asset(
            AppImages.appBarImage,
            fit: BoxFit.fill,
            alignment: Alignment.centerRight,
          ),
        ),
        // automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            AppRoutes.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, top: 33.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(
                  context,
                  'Enter the following information in order to validate your policy ',
                  15.sp,
                  fontFamily: 'Poppins-SemiBold',
                  color: Color.fromRGBO(0, 0, 0, 1),
                  textalign: 'false'),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: text(context, 'Policy Number', 12.sp,
                    fontFamily: 'Poppins-SemiBold',
                    color: Color.fromRGBO(0, 0, 0, 1),
                    textalign: 'true'),
              ),
              SizedBox(
                height: 6.h,
              ),
              Container(
                height: 51.h,
                padding: EdgeInsets.all(15),
                width: 325.w,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: TextFormField(
                  // textAlign: TextAlign.center,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Username',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
