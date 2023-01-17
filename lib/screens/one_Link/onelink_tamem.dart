import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:policyapp/utils/app-Routes.dart';
import 'package:policyapp/utils/app-TextWidget.dart';

import '../../utils/app-Color.dart';
import '../../utils/app-Images.dart';

class OneLinkTamem extends StatefulWidget {
  const OneLinkTamem({Key? key}) : super(key: key);

  @override
  State<OneLinkTamem> createState() => _OneLinkTamemState();
}

class _OneLinkTamemState extends State<OneLinkTamem> {
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
          '1Link',
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

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info_outline,
              color: AppColors.whiteColor,
            ),
          )
        ],
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
                SizedBox(
                  width: 135.w,
                  height: 44.h,
                  child: const Image(
                    image: AssetImage(AppImages.tamemLogo),
                  ),
                ),
                text(
                  context,
                  'For 1 Link Use Only',
                  18.sp,
                  color: AppColors.blackshade2632,
                  fontFamily: 'Poppins-Light',
                ),
                text(
                  context,
                  'Due date',
                  16.sp,
                  color: AppColors.blackshade2632,
                  fontFamily: 'Poppins-Light',
                ),
                text(
                  context,
                  '5 september 2022',
                  16.sp,
                  color: AppColors.blackshade2632,
                  fontFamily: 'Poppins-Light',
                ),
                Container(
                  width: 335.w,
                  height: 74.h,
                  decoration: BoxDecoration(
                    color: AppColors.greenColorOF7.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          text(
                            context,
                            'Use the Prefix ',
                            18.sp,
                            color: AppColors.blackshade2632,
                            fontFamily: 'Poppins-Light',
                          ),
                          text(
                            context,
                            '100827',
                            18.sp,
                            color: AppColors.primaryColor,
                            fontFamily: 'Poppins-Light',
                          ),
                        ],
                      ),
                      text(
                        context,
                        'followed by the Challan#',
                        18.sp,
                        color: AppColors.blackshade2632,
                        fontFamily: 'Poppins-Light',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 18.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text(
                        context,
                        'Challan No# ',
                        18.sp,
                        color: AppColors.blackshade2632,
                        fontFamily: 'Poppins-Light',
                      ),
                      Row(
                        children: [
                          text(
                            context,
                            '000157535',
                            18.sp,
                            color: AppColors.primaryColor,
                            fontFamily: 'Poppins-Light',
                          ),
                          Icon(
                            Icons.copy,
                            color: AppColors.blackshade2632,
                            size: 10.sp,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text(
                        context,
                        'Issue Date',
                        14.sp,
                        color: AppColors.blackshade2632,
                        fontFamily: 'Poppins-Light',
                      ),
                      text(
                        context,
                        '30 Aug 2022',
                        14.sp,
                        color: AppColors.primaryColor,
                        fontFamily: 'Poppins-Light',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text(
                        context,
                        'Billing Month',
                        14.sp,
                        color: AppColors.blackshade2632,
                        fontFamily: 'Poppins-Light',
                      ),
                      text(
                        context,
                        'August 2022',
                        14.sp,
                        color: AppColors.primaryColor,
                        fontFamily: 'Poppins-Light',
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 335.w,
                  height: 110.h,
                  margin: EdgeInsets.only(top: 18.h),
                  decoration: BoxDecoration(
                    color: AppColors.greenColorOF7.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  padding: EdgeInsets.only(
                    left: 10.w,
                    right: 10.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          text(
                            context,
                            'Total Amount ',
                            16.sp,
                            color: AppColors.primaryColor,
                            fontFamily: 'Poppins-Light',
                          ),
                          text(
                            context,
                            'PKR 55,000',
                            16.sp,
                            color: AppColors.primaryColor,
                            fontFamily: 'Poppins-Light',
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.primaryColor.withOpacity(0.30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          text(
                            context,
                            'Installment Plan',
                            16.sp,
                            color: AppColors.primaryColor,
                            fontFamily: 'Poppins-Light',
                          ),
                          text(
                            context,
                            'PKR 5,000/month',
                            16.sp,
                            color: AppColors.primaryColor,
                            fontFamily: 'Poppins-Light',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: text(
                      context,
                      'Note',
                      16.sp,
                      color: AppColors.blackshade2632,
                      fontFamily: 'Poppins-Medium',
                    ),
                  ),
                ),
                notesWidget(),
                notesWidget(),
                notesWidget(),
                notesWidget(),
                notesWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget notesWidget() {
    return Padding(
      padding: EdgeInsets.only(
        top: 5.h,
        left: 10.w,
      ),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            size: 10.sp,
          ),
          Container(
            width: 320.w,
            padding: EdgeInsets.only(left: 5.w),
            child: text(
              context,
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              12.sp,
              color: AppColors.blackshade2632,
              fontFamily: 'Poppins-Light',
            ),
          )
        ],
      ),
    );
  }
}
