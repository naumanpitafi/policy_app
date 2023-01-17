import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:policyapp/utils/app-Images.dart';
import 'package:policyapp/utils/app-TextWidget.dart';
import '../../utils/app-Color.dart';
import '../../utils/app-Routes.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
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
          'Reports',
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
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    height: 128.h,
                    width: 129.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.reportScreenImage),
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
                                'Reports',
                                18.sp,
                                color: AppColors.blackColor,
                                fontFamily: 'Poppins-SemiBold',
                              ),
                            ),
                            Container(
                              width: 170.w,
                              child: text(
                                context,
                                'View and download PDFs of your important documents ',
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
              SizedBox(
                height: 51.h,
              ),
              reportScreenWidget(
                AppImages.viewPolicyicon,
                'View Policy',
              ),
              reportScreenWidget(
                AppImages.viewDebitReportIcon,
                'View Debit Note',
              ),
              reportScreenWidget(
                AppImages.viewCreditNoteIcon,
                'View Credit Note',
              ),
              reportScreenWidget(
                AppImages.viewScheduleIcon,
                'View Schedule',
              ),
              reportScreenWidget(
                AppImages.viewReciptIcon,
                'View Receipt',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget reportScreenWidget(
    String imageName,
    String buttonName,
  ) {
    return Container(
      width: 325.w,
      height: 51.h,
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 0,
            color: AppColors.primaryColor.withOpacity(0.18),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 18.sp,
            margin: EdgeInsets.only(left: 11.w, right: 14.w),
            width: 15.w,
            child: Image(image: AssetImage(imageName)),
          ),
          text(
            context,
            buttonName,
            14.sp,
            color: AppColors.blackshade2632,
            fontFamily: "Poppins-Medium",
          ),
          const Spacer(),
          Container(
            margin: EdgeInsets.only(right: 10.w),
            height: 24.sp,
            width: 22.w,
            child: Image(image: AssetImage(AppImages.viewPdfIcon)),
          ),
        ],
      ),
    );
  }
}
