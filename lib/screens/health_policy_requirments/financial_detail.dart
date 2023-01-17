import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app-Color.dart';
import '../../utils/app-Images.dart';
import '../../utils/app-Routes.dart';
import '../../utils/app-TextWidget.dart';

class FinancialDetailScreen extends StatefulWidget {
  const FinancialDetailScreen({Key? key}) : super(key: key);

  @override
  State<FinancialDetailScreen> createState() => _FinancialDetailScreenState();
}

class _FinancialDetailScreenState extends State<FinancialDetailScreen> {
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
          'Financial Details',
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
                                'Financial Details',
                                18.sp,
                                color: AppColors.blackColor,
                                fontFamily: 'Poppins-SemiBold',
                              ),
                            ),
                            Container(
                              width: 170.w,
                              child: text(
                                context,
                                'Here is a receipt of your financial details',
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
                        image: AssetImage(AppImages.financialDetailImage),
                      ),
                    ),
                  ),
                ],
              ),
              financialdetailWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget financialdetailWidget() {
    return Container(
      width: 335.w,
      height: 227.h,
      margin: EdgeInsets.only(top: 35.h),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            color: AppColors.primaryColor.withOpacity(0.12),
            blurRadius: 11,
            spreadRadius: 0,
            blurStyle: BlurStyle.outer,
          )
        ],
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 22.w,
          right: 22.w,
          top: 16.h,
          bottom: 16.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(
                  context,
                  'Sum Insured',
                  12.sp,
                  color: AppColors.blackshade2632,
                  fontFamily: 'Poppins',
                ),
                text(
                  context,
                  '1,900,000',
                  14.sp,
                  color: AppColors.primaryColor,
                  fontFamily: 'Poppins-SemiBold',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(
                  context,
                  'Gross Premium',
                  12.sp,
                  color: AppColors.blackshade2632,
                  fontFamily: 'Poppins',
                ),
                text(
                  context,
                  '15,462',
                  14.sp,
                  color: AppColors.primaryColor,
                  fontFamily: 'Poppins-SemiBold',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(
                  context,
                  'Admin Surcharge',
                  12.sp,
                  color: AppColors.blackshade2632,
                  fontFamily: 'Poppins',
                ),
                text(
                  context,
                  '773',
                  14.sp,
                  color: AppColors.primaryColor,
                  fontFamily: 'Poppins-SemiBold',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(
                  context,
                  'Duties',
                  12.sp,
                  color: AppColors.blackshade2632,
                  fontFamily: 'Poppins',
                ),
                text(
                  context,
                  '2765',
                  14.sp,
                  color: AppColors.primaryColor,
                  fontFamily: 'Poppins-SemiBold',
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: AppColors.blackColor.withOpacity(0.23),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  // color: Colors.black,
                  width: 53.w,
                  height: 53.h,
                  child: const Image(
                      image: AssetImage(
                    AppImages.financialNetPremiumImage,
                  )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text(
                      context,
                      'Net Premium',
                      12.sp,
                      fontFamily: 'Poppins',
                      color: AppColors.blackshade2632,
                    ),
                    text(
                      context,
                      'PKR 25,000/year',
                      14.sp,
                      fontFamily: 'Poppins-SemiBold',
                      color: AppColors.primaryColor,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
