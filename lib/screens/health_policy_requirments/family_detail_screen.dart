import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:policyapp/utils/app-Images.dart';
import 'package:policyapp/utils/app-Routes.dart';
import 'package:policyapp/widgets/family_detial_widget.dart';

import '../../utils/app-Color.dart';
import '../../utils/app-TextWidget.dart';

class FamilyDetailsScreen extends StatefulWidget {
  const FamilyDetailsScreen({Key? key}) : super(key: key);

  @override
  State<FamilyDetailsScreen> createState() => _FamilyDetailsScreenState();
}

class _FamilyDetailsScreenState extends State<FamilyDetailsScreen> {
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
          'Family Detail',
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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 25.h),
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
                          'Family Detail',
                          18.sp,
                          color: AppColors.blackColor,
                          fontFamily: 'Poppins-SemiBold',
                        ),
                      ),
                      Container(
                        width: 170.w,
                        child: text(
                          context,
                          'You can see all your vehical details here',
                          12.sp,
                          color: AppColors.textGrey7A,
                          fontFamily: 'Poppins-Light',
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 128.h,
                    width: 129.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.familyDetailPic),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.w,
                right: 10.w,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.blackColor.withOpacity(0.25),
                        offset: Offset.zero,
                        blurRadius: 4.0,
                        spreadRadius: 0.0,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15.w,
                    right: 15.w,
                    top: 15.h,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: CustomFamilyDetailWidget(
                            heading: 'Spouse Details',
                            uuid: 'UUID:195782',
                            date: '2 April 2022 - 2 April 2023',
                            name: 'Mrs. Ikhtiyar',
                            cinic: '35202-1234567-8',
                            relashionship: 'Wife(Married)',
                            dob: '27 Nov 1978(44)',
                            gender: 'Female',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: CustomFamilyDetailWidget(
                            heading: 'Child 1',
                            uuid: 'UUID:195782',
                            date: '2 April 2022 - 2 April 2023',
                            name: 'Adeel Ahmed',
                            cinic: '35202-1234567-8',
                            relashionship: 'Son(Married)',
                            dob: '27 Nov 1998(24)',
                            gender: 'Male',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: CustomFamilyDetailWidget(
                            heading: 'Child 1',
                            uuid: 'UUID:195782',
                            date: '2 April 2022 - 2 April 2023',
                            name: 'Adeel Ahmed',
                            cinic: '35202-1234567-8',
                            relashionship: 'Son(Married)',
                            dob: '27 Nov 1998(24)',
                            gender: 'Male',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
