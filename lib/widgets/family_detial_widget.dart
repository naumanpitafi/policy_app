import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:policyapp/utils/app-Images.dart';

import '../utils/app-Color.dart';
import '../utils/app-TextWidget.dart';

class CustomFamilyDetailWidget extends StatelessWidget {
  CustomFamilyDetailWidget({
    required this.heading,
    required this.uuid,
    required this.date,
    required this.name,
    required this.cinic,
    required this.relashionship,
    required this.dob,
    required this.gender,

  });

  final String heading;
  final String uuid;
  final String date;
  final String name;
  final String cinic;
  final String relashionship;
  final String dob;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text(
              context,
              heading,
              14.sp,
              fontFamily: 'Poppins-SemiBold',
              color: AppColors.primaryColor,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                text(
                  context,
                 uuid,
                  12.sp,
                  fontFamily: 'Poppins-SemiBold',
                  color: AppColors.blackColor,
                ),
                text(
                  context,
                  date,
                  10.sp,
                  fontFamily: 'Poppins-SemiBold',
                  color: AppColors.primaryColor,
                ),
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
                         name,
                          14.sp,
                          fontFamily: 'Poppins-SemiBold',
                          color: AppColors.blackColor,
                        ),
                        text(
                          context,
                         cinic,
                          12.sp,
                          fontFamily: 'Poppins-Light',
                          color: AppColors.blackshade2632,
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
                          'Relationship',
                          12.sp,
                          fontFamily: 'Poppins-Light',
                          color: AppColors.blackshade2632,
                        ),
                        text(
                          context,
                         relashionship,
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
                        dob,
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
                         gender,
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
      ],
    );
 }
}
