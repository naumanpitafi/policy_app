import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:policyapp/screens/myUic/verify_manually_Screen.dart';
import 'package:policyapp/widgets/customIconButtonWidget.dart';
import 'package:policyapp/widgets/custom_Button_widget.dart';

import '../../utils/app-Color.dart';
import '../../utils/app-Images.dart';
import '../../utils/app-Routes.dart';
import '../../utils/app-TextWidget.dart';

class PolicyVerificationScreen extends StatefulWidget {
  const PolicyVerificationScreen({Key? key}) : super(key: key);

  @override
  State<PolicyVerificationScreen> createState() =>
      _PolicyVerificationScreenState();
}

class _PolicyVerificationScreenState extends State<PolicyVerificationScreen> {
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {},
        child: const Center(
          child: Icon(
            Icons.add,
            color: AppColors.whiteColor,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 205.h, left: 66.w, right: 66.w),
              child: text(
                  context, 'Verify if your policy is real or not ', 15.sp,
                  fontFamily: 'Poppins-SemiBold',
                  color: AppColors.blackColor,
                  textalign: 'true'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 66.w, right: 66.w),
              child: text(
                  context,
                  'Choose one of the following options to verify the authenticity of your policy.',
                  12.sp,
                  fontFamily: 'Poppins-Light',
                  color: AppColors.textGreyLight,
                  textalign: 'true'),
            ),
            SizedBox(
              height: 36.h,
            ),
            CustomIconButtomWidget(
              imageString: AppImages.scanImage,
              height: 51.h,
              width: 325.w,
              onfunTap: () {
                // AppRoutes.push(
                //     context, PageTransitionType.fade, const ScanQRCodeScreen());
              },
              color: AppColors.whiteColor,
              buttonText: 'Scan QR code',
            ),
            SizedBox(
              height: 25.h,
            ),
            CustomIconButtomWidget(
              imageString: AppImages.editImage,
              height: 51.h,
              width: 325.w,
              onfunTap: () {
                AppRoutes.push(
                    context, PageTransitionType.fade, const VerifyManuallyScreen());
              },
              color: AppColors.whiteColor,
              buttonText: 'Verify Manually',
            ),
          ],
        ),
      ),
    );
  }
}
