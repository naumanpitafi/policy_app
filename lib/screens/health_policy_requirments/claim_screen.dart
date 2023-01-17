import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:policyapp/utils/app-Color.dart';
import 'package:policyapp/utils/app-Images.dart';

import '../../utils/app-Routes.dart';
import '../../utils/app-TextWidget.dart';

class ClaimScreen extends StatefulWidget {
  const ClaimScreen({Key? key}) : super(key: key);

  @override
  State<ClaimScreen> createState() => _ClaimScreenState();
}

class _ClaimScreenState extends State<ClaimScreen> {
  TextEditingController lossDate = TextEditingController();
  TextEditingController lossPlace = TextEditingController();
  TextEditingController lossDescription = TextEditingController();
  TextEditingController estimateAmount = TextEditingController();
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
          'Claims',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.only(left: 5.w, right: 5.w, top: 25.h),
                        child: Container(
                          width: 176.w,
                          child: text(
                            context,
                            'Enter the following information to claim your insurance policy',
                            18.sp,
                            color: AppColors.blackColor,
                            fontFamily: 'Poppins-SemiBold',
                          ),
                        )),
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
                SizedBox(
                  height: 21.h,
                ),
                textFieldWidget(
                  lossDate,
                  Icons.calendar_month,
                  'mm/dd/yyyy',
                  'Loss Date',
                ),
                textFieldWidget(
                  lossPlace,
                  Icons.place,
                  'mm/dd/yyyy',
                  'Loss Place',
                ),
                maxLineTextFieldWidget(
                  lossDescription,
                  'Describe what happened to your vehical',
                  'Loss Description',
                ),
                textFieldestimateWidget(
                  estimateAmount,
                  'Rs. ______',
                  'Estimated Amount',
                ),
                SizedBox(
                  height: 25.h,
                ),
                uploadDocumentWidget(),
                SizedBox(
                  height: 25.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textFieldWidget(
    TextEditingController textControllerVal,
    IconData iconVal,
    String hintVal,
    String labelVal,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: 28.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              text(
                context,
                labelVal,
                12.sp,
                color: AppColors.blackColor,
                fontFamily: 'Poppins-SemiBold',
              ),
              Icon(
                Icons.star_border_purple500_rounded,
                color: AppColors.readColorF24,
                size: 10.sp,
              )
            ],
          ),
          SizedBox(
            height: 6.h,
          ),
          Container(
            width: 325.w,
            height: 51.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: AppColors.primaryColor.withOpacity(0.18),
                    blurStyle: BlurStyle.outer,
                  )
                ]),
            padding: EdgeInsets.only(left: 14.w, right: 14.w),
            child: Center(
              child: TextFormField(
                controller: textControllerVal,
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      iconVal,
                      color: AppColors.blackshade2632,
                      size: 20.sp,
                    ),
                    border: InputBorder.none,
                    hintText: hintVal,
                    hintStyle: TextStyle(
                      color: AppColors.greyColor767,
                      fontFamily: 'Poppins-Medium',
                      fontSize: 10.sp,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget textFieldestimateWidget(
    TextEditingController textControllerVal,
    String hintVal,
    String labelVal,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: 28.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              text(
                context,
                labelVal,
                12.sp,
                color: AppColors.blackColor,
                fontFamily: 'Poppins-SemiBold',
              ),
              Icon(
                Icons.star_border_purple500_rounded,
                color: AppColors.readColorF24,
                size: 10.sp,
              )
            ],
          ),
          SizedBox(
            height: 6.h,
          ),
          Container(
            width: 325.w,
            height: 51.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: AppColors.primaryColor.withOpacity(0.18),
                    blurStyle: BlurStyle.outer,
                  )
                ]),
            padding: EdgeInsets.only(left: 14.w, right: 14.w),
            child: Center(
              child: TextFormField(
                controller: textControllerVal,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintVal,
                    hintStyle: TextStyle(
                      color: AppColors.greyColor767,
                      fontFamily: 'Poppins-Medium',
                      fontSize: 10.sp,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget maxLineTextFieldWidget(
    TextEditingController textControllerVal,
    String hintVal,
    String labelVal,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: 28.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              text(
                context,
                labelVal,
                12.sp,
                color: AppColors.blackColor,
                fontFamily: 'Poppins-SemiBold',
              ),
              Icon(
                Icons.star_border_purple500_rounded,
                color: AppColors.readColorF24,
                size: 10.sp,
              )
            ],
          ),
          SizedBox(
            height: 6.h,
          ),
          Container(
            width: 325.w,
            height: 148.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: AppColors.primaryColor.withOpacity(0.18),
                    blurStyle: BlurStyle.outer,
                  )
                ]),
            padding: EdgeInsets.only(left: 14.w, right: 14.w),
            child: TextFormField(
              controller: textControllerVal,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 13.h,
                  horizontal: 12.w,
                ),
                hintText: hintVal,
                hintStyle: TextStyle(
                  color: AppColors.greyColor767,
                  fontFamily: 'Poppins-Medium',
                  fontSize: 10.sp,
                ),
              ),
              maxLines: 5,
            ),
          ),
        ],
      ),
    );
  }

  Widget uploadDocumentWidget() {
    return Container(
      padding: EdgeInsets.only(
        top: 24.h,
        bottom: 24.h,
        left: 36.w,
        right: 36.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.r),
        border: Border.all(
          color: AppColors.greyColorE3E,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          text(
            context,
            'Upload Your Documents',
            14.sp,
            fontFamily: 'Poppins-SemiBold',
            color: AppColors.blackColor,
          ),
          SizedBox(
            height: 28.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 88.h,
                    width: 109.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          color: AppColors.primaryColor.withOpacity(0.25),
                          blurRadius: 4,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    padding: EdgeInsets.only(
                        left: 20.w, right: 20.w, top: 19.h, bottom: 19.h),
                    child: const Image(image: AssetImage(AppImages.cnicFront)),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  text(
                    context,
                    'CNIC Front',
                    12.sp,
                    fontFamily: 'Poppins-SemiBold',
                    color: AppColors.blackColor,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 88.h,
                    width: 109.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          color: AppColors.primaryColor.withOpacity(0.25),
                          blurRadius: 4,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    padding: EdgeInsets.only(
                        left: 20.w, right: 20.w, top: 19.h, bottom: 19.h),
                    child:
                        const Image(image: AssetImage(AppImages.uploadImage)),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  text(
                    context,
                    'CNIC Back',
                    12.sp,
                    fontFamily: 'Poppins-SemiBold',
                    color: AppColors.blackColor,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 88.h,
                    width: 109.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          color: AppColors.primaryColor.withOpacity(0.25),
                          blurRadius: 4,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    padding: EdgeInsets.only(
                        left: 20.w, right: 20.w, top: 19.h, bottom: 19.h),
                    child:
                        const Image(image: AssetImage(AppImages.uploadImage)),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  text(
                    context,
                    'Passport',
                    12.sp,
                    fontFamily: 'Poppins-SemiBold',
                    color: AppColors.blackColor,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 88.h,
                    width: 109.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          color: AppColors.primaryColor.withOpacity(0.25),
                          blurRadius: 4,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    padding: EdgeInsets.only(
                        left: 20.w, right: 20.w, top: 19.h, bottom: 19.h),
                    child:
                        const Image(image: AssetImage(AppImages.uploadImage)),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  text(
                    context,
                    'Visa Copy (Optional)',
                    12.sp,
                    fontFamily: 'Poppins-SemiBold',
                    color: AppColors.blackColor,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
