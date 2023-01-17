import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app-Color.dart';
import '../../utils/app-Images.dart';
import '../../utils/app-Routes.dart';
import '../../utils/app-TextWidget.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
          'History',
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info_outline,
              color: AppColors.whiteColor,
            ),
          )
        ],
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
                                  'History',
                                  18.sp,
                                  color: AppColors.blackColor,
                                  fontFamily: 'Poppins-SemiBold',
                                ),
                              ),
                              Container(
                                width: 170.w,
                                child: text(
                                  context,
                                  'Here are all your past requests and policy details ',
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
                    Container(
                      height: 128.h,
                      width: 129.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.historyImage),
                        ),
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
                        width: 320.w,
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
                SizedBox(
                  height: 10.h,
                ),
                historyCardWidget(),
                historyCardWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget historyCardWidget() {
    return Container(
      width: 330.w,
      // height: 35.h,
      margin: EdgeInsets.only(bottom: 15.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
              color: AppColors.primaryColor.withOpacity(0.8),
              blurRadius: 4,
              spreadRadius: 0,
              blurStyle: BlurStyle.outer),
        ],
      ),
      padding: EdgeInsets.only(top: 11.h, bottom: 11.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150.w,
                      child: Row(
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
                              text(
                                context,
                                'Nauman Aziz',
                                14.sp,
                                fontFamily: 'Poppins-SemiBold',
                                color: AppColors.blackColor,
                              ),
                              text(
                                context,
                                '35202-1234567-8',
                                12.sp,
                                fontFamily: 'Poppins-Light',
                                color: AppColors.blackshade2632,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                      height: 65,
                      child:
                          Image(image: AssetImage(AppImages.healthPolicypic)),
                    ),
                    text(
                      context,
                      'Health Insurance',
                      12.sp,
                      fontFamily: 'Poppins',
                      color: AppColors.blackshade2632,
                    ),
                    text(
                      context,
                      'Jasmin',
                      13.sp,
                      fontFamily: 'Poppins',
                      color: AppColors.primaryColor,
                    ),
                    text(
                      context,
                      'Net Premium',
                      13.sp,
                      fontFamily: 'Poppins',
                      color: AppColors.blackshade2632,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        text(
                          context,
                          'PKR 25,000',
                          18.sp,
                          fontFamily: 'Poppins-SemiBold',
                          color: AppColors.primaryColor,
                        ),
                        text(
                          context,
                          '/8 Days',
                          12.sp,
                          fontFamily: 'Poppins',
                          color: AppColors.primaryColor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 47.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                        color: AppColors.greenColor1Fb.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: text(context, 'Paid', 12.sp,
                            fontFamily: 'Poppins-Medium',
                            color: AppColors.greenColor1Fb),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 36.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          text(context, 'Endorsment No', 10.sp,
                              color: AppColors.blackColor,
                              fontFamily: 'Poppins'),
                          Container(
                            width: 42.w,
                            height: 36.h,
                            decoration: BoxDecoration(
                              color: AppColors.orangeColor,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: text(context, '00', 12.sp,
                                  fontFamily: 'Poppins-Medium',
                                  color: AppColors.whiteColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 36.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.file_copy_outlined,
                            color: AppColors.blueColor33c,
                            size: 20.sp,
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          text(
                            context,
                            'View Details',
                            12.sp,
                            color: AppColors.blueColor33c,
                          )
                        ],
                        // mainAxisAlignment: MainAxisAlignment.start,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Divider(
            thickness: 1,
            color: AppColors.blackColor.withOpacity(0.2),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: text(
              context,
              'Remarks',
              12.sp,
              color: AppColors.blackshade2632,
              fontFamily: 'Poppins-SemiBold',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: text(
              context,
              'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
              12.sp,
              color: AppColors.blackshade2632,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }
}
