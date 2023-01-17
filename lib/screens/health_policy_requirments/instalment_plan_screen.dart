import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app-Color.dart';
import '../../utils/app-Images.dart';
import '../../utils/app-Routes.dart';
import '../../utils/app-TextWidget.dart';

class InstalmentPlanScreen extends StatefulWidget {
  const InstalmentPlanScreen({Key? key}) : super(key: key);

  @override
  State<InstalmentPlanScreen> createState() => _InstalmentPlanScreenState();
}

class _InstalmentPlanScreenState extends State<InstalmentPlanScreen> {
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
          'Instalment Plan',
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      height: 128.h,
                      width: 129.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.instantPlanImage),
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
                              text(
                                context,
                                'Monthly Instalments',
                                14.sp,
                                color: AppColors.blackColor,
                                fontFamily: 'Poppins-Medium',
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'PKR 2,000',
                                  style: TextStyle(
                                    color: AppColors.blackshade2632,
                                    fontSize: 22.sp,
                                    fontFamily: 'Poppins-SemiBold',
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '/month',
                                      style: TextStyle(
                                          color: AppColors.blackshade2632,
                                          fontFamily: 'Poppins-SemiBold',
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: AppColors.greenColor,
                                    size: 18.sp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6.w),
                                    child: text(
                                      context,
                                      '10 Paid',
                                      12.sp,
                                      fontFamily: 'Poppins',
                                      color: AppColors.blackshade2632,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 22.w),
                                    child: Icon(
                                      Icons.circle,
                                      color: AppColors.readColorF24,
                                      size: 18.sp,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6.w),
                                    child: text(
                                      context,
                                      '2 Unpaid',
                                      12.sp,
                                      fontFamily: 'Poppins',
                                      color: AppColors.blackshade2632,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 49.h),
                  child: Row(
                    children: [
                      text(
                        context,
                        'Policy Period:',
                        12.sp,
                        color: AppColors.blackColor,
                        fontFamily: 'Poppins-Medium',
                      ),
                      text(
                        context,
                        ' 2 April 2022 - 2 April 2023',
                        12.sp,
                        color: AppColors.blackshade2632,
                        fontFamily: 'Poppins-Light',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9.h),
                  child: Row(
                    children: [
                      text(
                        context,
                        'Number of Days:',
                        12.sp,
                        color: AppColors.blackColor,
                        fontFamily: 'Poppins-Medium',
                      ),
                      text(
                        context,
                        ' 365 Days',
                        12.sp,
                        color: AppColors.blackshade2632,
                        fontFamily: 'Poppins-Light',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 21.h,
                ),
                instantPlanWidget(),
                SizedBox(
                  height: 10.h,
                ),
                instantPlanWidget(),
                SizedBox(
                  height: 10.h,
                ),
                instantPlanWidget(),
                SizedBox(
                  height: 10.h,
                ),
                instantPlanWidget(),
                SizedBox(
                  height: 10.h,
                ),
                instantPlanWidget(),
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

  Widget instantPlanWidget() {
    return Container(
      width: 335.w,
      height: 135.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        border: Border.all(color: AppColors.greyColorDEE, width: 1),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Container(
            width: 335.w,
            height: 93.h,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              border: Border.all(color: AppColors.greyColorDEE, width: 1),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  top: 7.h, bottom: 7.h, left: 10.w, right: 10.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 36.h,
                        width: 36.w,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(AppImages.dobPic),
                            )),
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
                            'Oct 2022',
                            14.sp,
                            color: AppColors.blackshade2632,
                            fontFamily: 'Poppins-Medium',
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          text(
                            context,
                            'Due Date: 30 Oct',
                            10.sp,
                            color: AppColors.blackshade2632,
                            fontFamily: 'Poppins-Light',
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 47.w,
                            height: 24.h,
                            decoration: BoxDecoration(
                              color: AppColors.greenColorD2F,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: text(
                                context,
                                'Paid',
                                12.sp,
                                color: AppColors.greenColor1Fb,
                                fontFamily: 'Poppins-Medium',
                              ),
                            ),
                          ),
                          text(
                            context,
                            '25 Oct',
                            12.sp,
                            color: AppColors.greenColor1Fb,
                            fontFamily: 'Poppins-Light',
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text(
                        context,
                        'Premium',
                        12.sp,
                        color: AppColors.blackshade2632,
                        fontFamily: 'Poppins-Medium',
                      ),
                      text(
                        context,
                        'PKR 10,000',
                        14.sp,
                        color: AppColors.primaryColor,
                        fontFamily: 'Poppins-Medium',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 7.h, bottom: 7.h, left: 10.w, right: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(
                  context,
                  'Running Balance',
                  14.sp,
                  color: AppColors.primaryColor,
                  fontFamily: 'Poppins-Medium',
                ),
                text(
                  context,
                  'PKR 60,000',
                  14.sp,
                  color: AppColors.primaryColor,
                  fontFamily: 'Poppins-Medium',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
