import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:policyapp/screens/health_policy_requirments/claim_screen.dart';
import 'package:policyapp/screens/health_policy_requirments/family_detail_screen.dart';
import 'package:policyapp/screens/health_policy_requirments/financial_detail.dart';
import 'package:policyapp/screens/health_policy_requirments/history_Screen.dart';
import 'package:policyapp/screens/health_policy_requirments/report_screen.dart';
import 'package:policyapp/screens/health_policy_requirments/view_Imges_Screen.dart';
import 'package:policyapp/utils/app-Color.dart';
import 'package:policyapp/utils/app-Images.dart';

import '../../utils/app-Routes.dart';
import '../../utils/app-TextWidget.dart';
import 'instalment_plan_screen.dart';

class HealthScreen extends StatefulWidget {
  const HealthScreen({Key? key}) : super(key: key);

  @override
  State<HealthScreen> createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
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
          'Health',
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 8.h,
            left: 10.w,
            right: 10.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 128.h,
                      width: 129.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.healthPolicypic),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 25.w, right: 25.w, top: 25.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: text(
                                  context,
                                  'Health insurance',
                                  18.sp,
                                  color: AppColors.blackColor,
                                  fontFamily: 'Poppins-SemiBold',
                                ),
                              ),
                              Container(
                                width: 170.w,
                                child: text(
                                  context,
                                  'Family',
                                  12.sp,
                                  color: AppColors.textGrey7A,
                                  fontFamily: 'Poppins-Light',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 21.h,
                    left: 20.w,
                    right: 20.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text(
                        context,
                        'Policy Number:',
                        12.sp,
                        fontFamily: 'Poppins-SemiBold',
                        color: AppColors.blackColor,
                      ),
                      text(
                        context,
                        'End. no.',
                        8.sp,
                        fontFamily: 'Poppins-Light',
                        color: AppColors.blackColor,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.h,
                    left: 20.w,
                    right: 14.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 261.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.r),
                            bottomLeft: Radius.zero,
                            topRight: Radius.circular(4.r),
                            bottomRight: Radius.circular(4.r),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.primaryColor.withOpacity(0.8),
                                blurRadius: 4,
                                spreadRadius: 0,
                                blurStyle: BlurStyle.outer),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            text(
                              context,
                              'UWT/D/P002/0000006280/0922/001',
                              12.sp,
                              fontFamily: 'Poppins-SemiBold',
                              color: AppColors.primaryColor,
                            ),
                            Icon(
                              Icons.copy,
                              color: AppColors.primaryColor,
                              size: 15.sp,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 42.w,
                        height: 36.h,
                        decoration: BoxDecoration(
                            color: AppColors.orangeColor,
                            borderRadius: BorderRadius.circular(4.r)),
                        child: Align(
                          alignment: Alignment.center,
                          child: text(context, '00', 16.sp,
                              fontFamily: 'Poppins-SemiBold',
                              color: AppColors.whiteColor),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 184.w,
                        height: 23.h,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.zero,
                            bottomLeft: Radius.circular(4.r),
                            topRight: Radius.zero,
                            bottomRight: Radius.circular(4.r),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            text(
                              context,
                              '2 April 2022 - 2 April 2023',
                              10.sp,
                              fontFamily: 'Poppins-SemiBold',
                              color: AppColors.whiteColor,
                            ),
                            text(
                              context,
                              '(365)',
                              8.sp,
                              fontFamily: 'Poppins-SemiBold',
                              color: AppColors.blueColor,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      text(
                        context,
                        'Both Dates Inclusive ',
                        8.sp,
                        fontFamily: 'Poppins-Light',
                        color: AppColors.blackshade2632,
                      ),
                    ],
                  ),
                ),
                familyfirstCard(),
                Padding(
                  padding: EdgeInsets.only(left: 41.w, right: 41.w, top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 27.h,
                        width: 5.w,
                        color: AppColors.primaryColor,
                      ),
                      Container(
                        height: 27.h,
                        width: 5.w,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),
                familySecondCard(),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget familyfirstCard() {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Container(
            margin: EdgeInsets.only(top: 15.h),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                    // offset: Offset(0, 4),
                    blurRadius: 4,
                    spreadRadius: 0,
                    blurStyle: BlurStyle.outer,
                    color: AppColors.blackColor.withOpacity(0.25)),
              ],
            ),
            padding: EdgeInsets.only(
              left: 10.w,
              right: 10.w,
              top: 10.h,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 34.h,
                      width: 29.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            AppImages.namePic,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            text(
                              context,
                              'Ikhtiyar Ahmed  ',
                              14.sp,
                              fontFamily: 'Poppins-SemiBold',
                              color: AppColors.primaryColor,
                            ),
                            Icon(
                              Icons.circle,
                              color: AppColors.greenColor,
                              size: 18.sp,
                            ),
                            text(
                              context,
                              'Active',
                              12.sp,
                              fontFamily: 'Poppins-SemiBold',
                              color: AppColors.greenColor,
                            )
                          ],
                        ),
                        text(
                          context,
                          '35202-1234567-8',
                          12.sp,
                          fontFamily: 'Poppins-SemiBold',
                          color: AppColors.blackColor,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        text(
                          context,
                          'uuid:195782',
                          12.sp,
                          fontFamily: 'Poppins-SemiBold',
                          color: AppColors.blackColor,
                        ),
                        Container(
                          width: 47.w,
                          height: 24.h,
                          decoration: BoxDecoration(
                              color: AppColors.greenColorD2F,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Align(
                            alignment: Alignment.center,
                            child: text(
                              context,
                              'Paid',
                              12.sp,
                              fontFamily: 'Poppins-SemiBold',
                              color: AppColors.greenColor1Fb,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150.w,
                        child: Row(
                          children: [
                            Container(
                              height: 34.h,
                              width: 29.w,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppImages.dobPic,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text(
                                  context,
                                  'Date of Birth',
                                  12.sp,
                                  fontFamily: 'Poppins-Light',
                                  color: AppColors.blackshade2632,
                                ),
                                text(
                                  context,
                                  '27 Nov 2000(22)',
                                  13.sp,
                                  fontFamily: 'Poppins-SemiBold',
                                  color: AppColors.blackColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 150.w,
                        child: Row(
                          children: [
                            Container(
                              height: 29.h,
                              width: 29.w,
                              child: const Image(
                                image: AssetImage(AppImages.genderPic),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text(
                                  context,
                                  'Gender',
                                  12.sp,
                                  fontFamily: 'Poppins-Light',
                                  color: AppColors.blackshade2632,
                                ),
                                text(
                                  context,
                                  'Male',
                                  14.sp,
                                  fontFamily: 'Poppins-SemiBold',
                                  color: AppColors.blackColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150.w,
                        child: Row(
                          children: [
                            Container(
                              height: 29.h,
                              width: 29.w,
                              child: const Image(
                                image: AssetImage(AppImages.relationshippic),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text(
                                  context,
                                  'Relationship',
                                  12.sp,
                                  fontFamily: 'Poppins-Light',
                                  color: AppColors.blackshade2632,
                                ),
                                text(
                                  context,
                                  'Married',
                                  14.sp,
                                  fontFamily: 'Poppins-SemiBold',
                                  color: AppColors.blackColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 150.w,
                        child: Row(
                          children: [
                            Container(
                              height: 29.h,
                              width: 29.w,
                              child: const Image(
                                image: AssetImage(AppImages.relationshippic),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text(
                                  context,
                                  'Family Status',
                                  12.sp,
                                  fontFamily: 'Poppins-Light',
                                  color: AppColors.blackshade2632,
                                ),
                                text(
                                  context,
                                  'Yes',
                                  14.sp,
                                  fontFamily: 'Poppins-SemiBold',
                                  color: AppColors.blackColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: -15,
            // top: 5,
            left: 32.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.circle,
                  size: 23.sp,
                  color: AppColors.primaryColor,
                ),
              ],
            )),
        Positioned(
            bottom: -15,
            // top: 5,
            right: 32.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.circle,
                  size: 23.sp,
                  color: AppColors.primaryColor,
                ),
              ],
            )),
      ],
    );
  }

  Widget familySecondCard() {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Container(
            margin: EdgeInsets.only(top: 10.h),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                    // offset: Offset(0, 4),
                    blurRadius: 4,
                    spreadRadius: 0,
                    blurStyle: BlurStyle.outer,
                    color: AppColors.blackColor.withOpacity(0.25)),
              ],
            ),
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              top: 20.h,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        AppRoutes.push(context, PageTransitionType.fade,
                            const FamilyDetailsScreen());
                      },
                      child: Container(
                        height: 145.h,
                        width: 145.w,
                        decoration: BoxDecoration(
                          color: AppColors.orangeColorFF9,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // color: AppColors.blackColor,
                                  padding:
                                      EdgeInsets.only(top: 10.h, left: 10.w),
                                  width: 52.w,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: text(
                                      context,
                                      'Family Detail',
                                      12.sp,
                                      fontFamily: 'Poppins-SemiBold',
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  width: 62.w,
                                  height: 61.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.r),
                                      topLeft: Radius.circular(31.r),
                                      bottomLeft: Radius.circular(41.r),
                                      bottomRight: Radius.circular(41.r),
                                    ),
                                  ),
                                  child: Container(
                                    height: 10.h,
                                    width: 17.w,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              AppImages.familydetailIcon),
                                          fit: BoxFit.contain),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5.h),
                                  width: 68.w,
                                  child: text(
                                    context,
                                    'Tap to see details of your vehical',
                                    10.sp,
                                    color: Colors.white,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        AppRoutes.push(context, PageTransitionType.fade,
                            const FinancialDetailScreen());
                      },
                      child: Container(
                        height: 145.h,
                        width: 145.w,
                        decoration: BoxDecoration(
                          color: AppColors.blueColor61D,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // color: AppColors.blackColor,
                                  padding:
                                      EdgeInsets.only(top: 10.h, left: 10.w),
                                  width: 68.w,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: text(
                                      context,
                                      'Financial Details',
                                      12.sp,
                                      fontFamily: 'Poppins-SemiBold',
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  width: 62.w,
                                  height: 61.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.r),
                                      topLeft: Radius.circular(31.r),
                                      bottomLeft: Radius.circular(41.r),
                                      bottomRight: Radius.circular(41.r),
                                    ),
                                  ),
                                  child: Container(
                                    height: 10.h,
                                    width: 17.w,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(AppImages.walletIcon),
                                          fit: BoxFit.contain),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 15.h),
                                  width: 68.w,
                                  child: text(
                                    context,
                                    'Tap to see details of your vehical',
                                    10.sp,
                                    color: Colors.white,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        AppRoutes.push(context, PageTransitionType.fade,
                            const InstalmentPlanScreen());
                      },
                      child: Container(
                        height: 145.h,
                        width: 145.w,
                        decoration: BoxDecoration(
                          color: AppColors.pinkColorF18,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // color: AppColors.blackColor,
                                  padding:
                                      EdgeInsets.only(top: 10.h, left: 10.w),
                                  width: 82.w,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: text(
                                      context,
                                      'Instalment Plan',
                                      12.sp,
                                      fontFamily: 'Poppins-SemiBold',
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  width: 62.w,
                                  height: 61.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.r),
                                      topLeft: Radius.circular(31.r),
                                      bottomLeft: Radius.circular(41.r),
                                      bottomRight: Radius.circular(41.r),
                                    ),
                                  ),
                                  child: Container(
                                    height: 10.h,
                                    width: 17.w,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              AppImages.clockDotIcon),
                                          fit: BoxFit.contain),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5.h, left: 5.w),
                                  // width: 68.w,
                                  child: text(
                                    context,
                                    'PKR 2,000/month',
                                    10.sp,
                                    color: Colors.white,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5.h),
                                  width: 68.w,
                                  child: text(
                                    context,
                                    '10 paid 2 unpaid',
                                    10.sp,
                                    color: Colors.white,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 145.h,
                      width: 145.w,
                      decoration: BoxDecoration(
                        color: AppColors.blueColorABB,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // color: AppColors.blackColor,
                                padding: EdgeInsets.only(top: 10.h, left: 10.w),
                                width: 68.w,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: text(
                                    context,
                                    'Account Status',
                                    12.sp,
                                    fontFamily: 'Poppins-SemiBold',
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                width: 62.w,
                                height: 61.h,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.r),
                                    topLeft: Radius.circular(31.r),
                                    bottomLeft: Radius.circular(41.r),
                                    bottomRight: Radius.circular(41.r),
                                  ),
                                ),
                                child: Container(
                                  height: 10.h,
                                  width: 17.w,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(AppImages.personIcon),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10.h, right: 1.w),
                                width: 68.w,
                                child: text(
                                  context,
                                  'Tap to see your account status',
                                  10.sp,
                                  color: Colors.white,
                                  fontFamily: 'Poppins-Medium',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        AppRoutes.push(
                            context, PageTransitionType.fade, HistoryScreen());
                      },
                      child: Container(
                        height: 145.h,
                        width: 145.w,
                        decoration: BoxDecoration(
                          color: AppColors.blueColor7c77,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // color: AppColors.blackColor,
                                  padding:
                                      EdgeInsets.only(top: 10.h, left: 10.w),
                                  width: 62.w,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: text(
                                      context,
                                      'History',
                                      12.sp,
                                      fontFamily: 'Poppins-SemiBold',
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  width: 62.w,
                                  height: 61.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.r),
                                      topLeft: Radius.circular(31.r),
                                      bottomLeft: Radius.circular(41.r),
                                      bottomRight: Radius.circular(41.r),
                                    ),
                                  ),
                                  child: Container(
                                    height: 10.h,
                                    width: 17.w,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(AppImages.refreshIcon),
                                          fit: BoxFit.contain),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 25.h),
                                  width: 68.w,
                                  child: text(
                                    context,
                                    'Tap to see history',
                                    10.sp,
                                    color: Colors.white,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        AppRoutes.push(context, PageTransitionType.fade,
                            const ReportScreen());
                      },
                      child: Container(
                        height: 145.h,
                        width: 145.w,
                        decoration: BoxDecoration(
                          color: AppColors.orangeColor,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // color: AppColors.blackColor,
                                  padding:
                                      EdgeInsets.only(top: 10.h, left: 10.w),
                                  width: 68.w,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: text(
                                      context,
                                      'Reports',
                                      12.sp,
                                      fontFamily: 'Poppins-SemiBold',
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  width: 62.w,
                                  height: 61.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.r),
                                      topLeft: Radius.circular(31.r),
                                      bottomLeft: Radius.circular(41.r),
                                      bottomRight: Radius.circular(41.r),
                                    ),
                                  ),
                                  child: Container(
                                    height: 10.h,
                                    width: 17.w,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(AppImages.pdfIcon),
                                          fit: BoxFit.contain),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 15.h),
                                  width: 68.w,
                                  child: text(
                                    context,
                                    'View PDFs of your documents',
                                    10.sp,
                                    color: Colors.white,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        AppRoutes.push(context, PageTransitionType.fade,
                            const ViewImagesScreen());
                      },
                      child: Container(
                        height: 145.h,
                        width: 145.w,
                        decoration: BoxDecoration(
                          color: AppColors.greenColor6DE,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // color: AppColors.blackColor,
                                  padding:
                                      EdgeInsets.only(top: 10.h, left: 10.w),
                                  width: 83.w,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: text(
                                      context,
                                      'Images/Documents',
                                      12.sp,
                                      fontFamily: 'Poppins-SemiBold',
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  width: 62.w,
                                  height: 61.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.r),
                                      topLeft: Radius.circular(31.r),
                                      bottomLeft: Radius.circular(41.r),
                                      bottomRight: Radius.circular(41.r),
                                    ),
                                  ),
                                  child: Container(
                                    height: 10.h,
                                    width: 17.w,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(AppImages.imageIcon),
                                          fit: BoxFit.contain),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 5.h, right: 1.w),
                                  width: 88.w,
                                  child: text(
                                    context,
                                    'You can view and save images of your documents',
                                    10.sp,
                                    color: Colors.white,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        AppRoutes.push(context, PageTransitionType.fade,
                            const ClaimScreen());
                      },
                      child: Container(
                        height: 145.h,
                        width: 145.w,
                        decoration: BoxDecoration(
                          color: AppColors.pinkColorF18,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // color: AppColors.blackColor,
                                  padding:
                                      EdgeInsets.only(top: 10.h, left: 10.w),
                                  width: 68.w,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: text(
                                      context,
                                      'Claims',
                                      12.sp,
                                      fontFamily: 'Poppins-SemiBold',
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  width: 62.w,
                                  height: 61.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.r),
                                      topLeft: Radius.circular(31.r),
                                      bottomLeft: Radius.circular(41.r),
                                      bottomRight: Radius.circular(41.r),
                                    ),
                                  ),
                                  child: Container(
                                    height: 10.h,
                                    width: 17.w,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(AppImages.pagesIcon),
                                          fit: BoxFit.contain),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 15.h),
                                  width: 68.w,
                                  child: text(
                                    context,
                                    'See and Add your claims here',
                                    10.sp,
                                    color: Colors.white,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 145.h,
                      width: 145.w,
                      decoration: BoxDecoration(
                        color: AppColors.blueColor7E69,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // color: AppColors.blackColor,
                                padding: EdgeInsets.only(top: 10.h, left: 10.w),
                                width: 83.w,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: text(
                                    context,
                                    'Chat',
                                    12.sp,
                                    fontFamily: 'Poppins-SemiBold',
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                width: 62.w,
                                height: 61.h,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.r),
                                    topLeft: Radius.circular(31.r),
                                    bottomLeft: Radius.circular(41.r),
                                    bottomRight: Radius.circular(41.r),
                                  ),
                                ),
                                child: Container(
                                  height: 10.h,
                                  width: 17.w,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(AppImages.chatIcon),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 5.h,
                                ),
                                width: 120.w,
                                child: text(
                                  context,
                                  'Facing an issue? Our Customer Service Team is always ready to assist you',
                                  10.sp,
                                  color: Colors.white,
                                  fontFamily: 'Poppins-Medium',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 145.h,
                      width: 145.w,
                      decoration: BoxDecoration(
                        color: AppColors.blueColorFFc,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // color: AppColors.blackColor,
                                padding: EdgeInsets.only(top: 10.h, left: 10.w),
                                width: 68.w,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: text(
                                    context,
                                    'Request Details',
                                    12.sp,
                                    fontFamily: 'Poppins-SemiBold',
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                width: 62.w,
                                height: 61.h,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.r),
                                    topLeft: Radius.circular(31.r),
                                    bottomLeft: Radius.circular(41.r),
                                    bottomRight: Radius.circular(41.r),
                                  ),
                                ),
                                child: Container(
                                  height: 10.h,
                                  width: 17.w,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage(AppImages.documentIcon),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 15.h),
                                width: 68.w,
                                child: text(
                                  context,
                                  'See your request Details',
                                  10.sp,
                                  color: Colors.white,
                                  fontFamily: 'Poppins-Medium',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
        Positioned(
            // bottom: -15,
            top: -5,
            left: 32.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.circle,
                  size: 23.sp,
                  color: AppColors.primaryColor,
                ),
              ],
            )),
        Positioned(
            // bottom: -15,
            top: -5,
            right: 32.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.circle,
                  size: 23.sp,
                  color: AppColors.primaryColor,
                ),
              ],
            )),
      ],
    );
  }
}
