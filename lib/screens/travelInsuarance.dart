import 'dart:developer';
// import 'dart:ffi';
// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:policyapp/utils/app-Color.dart';
import 'package:policyapp/utils/app-Images.dart';
import 'package:policyapp/utils/app-TextWidget.dart';
import 'package:policyapp/utils/dateTimePickeWidget.dart';

class TravelInsurance extends StatefulWidget {
  const TravelInsurance({Key? key}) : super(key: key);

  @override
  State<TravelInsurance> createState() => _TravelInsuranceState();
}

class _TravelInsuranceState extends State<TravelInsurance> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.primaryColor,
        flexibleSpace: Image.asset(
          AppImages.appBarImage,
          fit: BoxFit.fill,
          alignment: Alignment.bottomRight,
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.h),
          child: Padding(
            padding: EdgeInsets.only(bottom: 40.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBarTitle(
                  context,
                  'Travel Insurance',
                  18.sp,
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 20.h,
            decoration: BoxDecoration(
              border: Border.all(width: 0, color: Colors.white),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(width: 0, color: Colors.white),
                color: Colors.white,
                image: const DecorationImage(
                  image: AssetImage(AppImages.mapImage),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 60.w, right: 60.w, top: 45.h),
                    child: text(
                        context,
                        'Protect your lifetime trip memories, get your journey insured.',
                        14.sp,
                        color: AppColors.textblueSgade,
                        textalign: 'true'),
                  ),
                  SizedBox(
                    height: 34.h,
                  ),
                  Container(
                    height: 140.h,
                    width: 353.w,
                    padding: EdgeInsets.only(
                        top: 19.h, bottom: 19.h, left: 24.w, right: 24.w),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(9.r),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffD3E0FF),
                          blurRadius: 9,
                          spreadRadius: 2,
                          offset: Offset(-1, 1),
                        ),
                      ],
                    ),
                    child: mainIndex == 1
                        ? destinationWidget()
                        : mainIndex == 2
                            ? countryTotravelWidget()
                            : mainIndex == 3
                                ? durationWidget()
                                : mainIndex == 4
                                    ? travelTypeWidget()
                                    : mainIndex == 5
                                        ? importantInformationWidget()
                                        : const SizedBox(),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  steperWidget(),
                  Expanded(child: Container()),
                  InkWell(
                    onTap: () {
                      setState(() {
                        slectedIndex++;
                        completeIndex++;
                      });
                    },
                    child: Container(
                      height: 54.h,
                      width: 319.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: AppColors.greyButtonColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          text(
                            context,
                            'Continue',
                            12.sp,
                            color: AppColors.blackColor,
                            boldText: FontWeight.w500,
                          ),
                          SizedBox(
                            width: 9.w,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.blackColor,
                            size: 15.sp,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 38.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  int slectedIndex = 1;
  int completeIndex = 1;
  int mainIndex = 1;
  String destinationDropDownHint = 'Select any option';
  String countryTotravelHint = 'Select any option';
  String durationDurationHint = 'Select any option';
  bool destinationcontainerColor = false;
  bool countryToTravelcontainerColor = false;
  bool durationcontainerColor = false;
  bool travelTypecontainerColor = false;
  bool importantInformationcontainerColor = false;

  Widget steperWidget() {
    return Padding(
      padding: EdgeInsets.only(left: 28.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    height: 15.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: slectedIndex == 1
                            ? AppColors.primaryColor
                            : Colors.transparent,
                      ),
                      shape: BoxShape.circle,
                      color: completeIndex > 1
                          ? AppColors.primaryColor
                          : AppColors.greyDevider,
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    color: completeIndex > 1
                        ? AppColors.primaryColor
                        : AppColors.greyDevider,
                    height: 25.h,
                    width: 3.w,
                  )
                ],
              ),
              SizedBox(
                width: 9.w,
              ),
              Text(
                'Destination',
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize:
                        completeIndex == 1 || completeIndex > 1 ? 16.sp : 12.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins-SemiBold"),
              ),
              SizedBox(
                width: 9.w,
              ),
              completeIndex == 1 || completeIndex > 1
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          completeIndex = 1;
                          slectedIndex = 1;
                          mainIndex = 1;
                        });
                      },
                      child: const Icon(
                        Icons.edit_outlined,
                        color: AppColors.primaryColor,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    height: 15.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: slectedIndex == 2
                            ? AppColors.primaryColor
                            : Colors.transparent,
                      ),
                      shape: BoxShape.circle,
                      color: completeIndex > 2
                          ? AppColors.primaryColor
                          : AppColors.greyDevider,
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    color: completeIndex > 2
                        ? AppColors.primaryColor
                        : AppColors.greyDevider,
                    height: 25.h,
                    width: 3.w,
                  )
                ],
              ),
              SizedBox(
                width: 9.w,
              ),
              Text(
                'Country to Travel',
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize:
                        completeIndex == 2 || completeIndex > 2 ? 16.sp : 12.sp,
                    fontWeight:
                        completeIndex > 2 ? FontWeight.w600 : FontWeight.w400,
                    fontFamily:
                        completeIndex > 2 ? "Poppins-SemiBold" : 'Poppins'),
              ),
              SizedBox(
                width: 9.w,
              ),
              completeIndex > 1
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          slectedIndex = 2;
                          completeIndex = 2;
                          mainIndex = 2;
                        });
                      },
                      child: const Icon(
                        Icons.edit_outlined,
                        color: AppColors.primaryColor,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    height: 15.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: slectedIndex == 3
                            ? AppColors.primaryColor
                            : Colors.transparent,
                      ),
                      shape: BoxShape.circle,
                      color: completeIndex > 3
                          ? AppColors.primaryColor
                          : AppColors.greyDevider,
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    color: completeIndex > 3
                        ? AppColors.primaryColor
                        : AppColors.greyDevider,
                    height: 25.h,
                    width: 3.w,
                  )
                ],
              ),
              SizedBox(
                width: 9.w,
              ),
              Text(
                'Duration',
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: completeIndex > 3 ? 16.sp : 12.sp,
                    fontWeight:
                        completeIndex > 3 ? FontWeight.w600 : FontWeight.w400,
                    fontFamily:
                        completeIndex > 3 ? "Poppins-SemiBold" : 'Poppins'),
              ),
              SizedBox(
                width: 9.w,
              ),
              completeIndex > 3
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          completeIndex = 3;
                          slectedIndex = 3;
                          mainIndex = 3;
                        });
                      },
                      child: const Icon(
                        Icons.edit_outlined,
                        color: AppColors.primaryColor,
                      ),
                    )
                  : const SizedBox()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    height: 15.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: slectedIndex == 4
                            ? AppColors.primaryColor
                            : Colors.transparent,
                      ),
                      shape: BoxShape.circle,
                      color: completeIndex > 4
                          ? AppColors.primaryColor
                          : AppColors.greyDevider,
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    color: completeIndex > 4
                        ? AppColors.primaryColor
                        : AppColors.greyDevider,
                    height: 25.h,
                    width: 3.w,
                  )
                ],
              ),
              SizedBox(
                width: 9.w,
              ),
              Text(
                'Travel Type',
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize:
                        completeIndex == 4 || completeIndex > 4 ? 16.sp : 12.sp,
                    fontWeight:
                        completeIndex > 4 ? FontWeight.w600 : FontWeight.w400,
                    fontFamily:
                        completeIndex > 4 ? "Poppins-SemiBold" : 'Poppins'),
              ),
              SizedBox(
                width: 9.w,
              ),
              completeIndex > 4
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          completeIndex = 4;
                          slectedIndex = 4;
                        });
                      },
                      child: const Icon(
                        Icons.edit_outlined,
                        color: AppColors.primaryColor,
                      ),
                    )
                  : const SizedBox()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    height: 15.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: slectedIndex == 5
                            ? AppColors.primaryColor
                            : Colors.transparent,
                      ),
                      shape: BoxShape.circle,
                      color: completeIndex > 5
                          ? AppColors.primaryColor
                          : AppColors.greyDevider,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 9.w,
              ),
              Text(
                'Important Information',
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: completeIndex > 5 ? 16.sp : 12.sp,
                    fontWeight:
                        completeIndex > 5 ? FontWeight.w600 : FontWeight.w400,
                    fontFamily:
                        completeIndex > 5 ? "Poppins-SemiBold" : 'Poppins'),
              ),
              SizedBox(
                width: 9.w,
              ),
              completeIndex > 5
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          completeIndex = 5;
                          slectedIndex = 5;
                        });
                      },
                      child: const Icon(
                        Icons.edit_outlined,
                        color: AppColors.primaryColor,
                      ),
                    )
                  : const SizedBox()
            ],
          ),
        ],
      ),
    );
  }

  Widget destionNextButtonWidgte(IconData icon) {
    return Container(
      height: 33.h,
      width: 33.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.r),
        color: destinationcontainerColor
            ? AppColors.primaryColor
            : AppColors.greyButtonColor,
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 18,
      ),
    );
  }

  Widget countryToTravelNextButtonWidgte(IconData icon) {
    return Container(
      height: 33.h,
      width: 33.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.r),
        color: countryToTravelcontainerColor
            ? AppColors.primaryColor
            : AppColors.greyButtonColor,
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 18,
      ),
    );
  }

  Widget durationNextButtonWidgte(IconData icon) {
    return Container(
      height: 33.h,
      width: 33.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.r),
        color: durationcontainerColor
            ? AppColors.primaryColor
            : AppColors.greyButtonColor,
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 18,
      ),
    );
  }

  Widget travelTypeNextButtonWidgte(IconData icon) {
    return Container(
      height: 33.h,
      width: 33.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.r),
        color: travelTypecontainerColor
            ? AppColors.primaryColor
            : AppColors.greyButtonColor,
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 18,
      ),
    );
  }

  Widget destinationWidget() {
    destinationcontainerColor =
        destinationDropDownHint != 'Select any option' ? true : false;
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: text(context, 'Destination', 12.sp,
              boldText: FontWeight.w600,
              color: AppColors.blackColor,
              fontFamily: 'Poppins-SemiBold'),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: text(
              context, 'Select any of the option from the drop down', 10.sp,
              boldText: FontWeight.w400,
              color: Color(0xff757575),
              fontFamily: 'Poppins'),
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 33.h,
              width: 33.w,
            ),
            Stack(
              fit: StackFit.loose,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 5.w, right: 5.w),
                  height: 36.h,
                  width: 221.w,
                  margin: EdgeInsets.only(top: 5.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor, width: 1),
                    borderRadius: BorderRadius.circular(5),
                    shape: BoxShape.rectangle,
                  ),
                  child: DropdownButton<String>(
                    borderRadius: BorderRadius.circular(6.r),
                    isExpanded: true,
                    underline: const SizedBox(),
                    value: destinationDropDownHint,
                    onChanged: (String? newValue) {
                      setState(() {
                        destinationDropDownHint.length == 4 &&
                                destinationDropDownHint.length > 4
                            ? destinationDropDownHint.substring(0, 8)
                            : destinationDropDownHint = newValue!;
                        // destinationDropDownHint = newValue!;
                      });
                    },
                    items: <String>[
                      'Select any option',
                      'Schengen States',
                      'Worldwide',
                      'Rest of the World (Excluding USA, Canada &)...',
                      'Student',
                      'Hajj',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: text(
                          context,
                          value,
                          9.sp,
                          fontFamily: 'Poopins',
                          color: AppColors.blackColor,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Positioned(
                    left: 15,
                    top: -6,
                    child: Container(
                      padding: EdgeInsets.only(top: 2.h, left: 7.w, right: 7.w),
                      color: Colors.white,
                      child: text(context, 'Destination', 10.sp,
                          color: AppColors.primaryColor,
                          fontFamily: "Poppins",
                          boldText: FontWeight.w400),
                    )),
              ],
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    mainIndex++;
                    slectedIndex++;
                    completeIndex++;
                    log('mainIndex = $mainIndex');
                    log('slectedIndex = $slectedIndex');
                    log('completeIndex = $completeIndex');
                  });
                  // if (destinationDropDownHint != 'Select any option') {
                  //   setState(() {
                  //     mainIndex++;
                  //     slectedIndex++;
                  //     completeIndex++;
                  //     log('mainIndex = $mainIndex');
                  //     log('slectedIndex = $slectedIndex');
                  //     log('completeIndex = $completeIndex');
                  //   });
                  // }
                },
                child: destionNextButtonWidgte(
                  Icons.arrow_forward_ios_rounded,
                )),
          ],
        )
      ],
    );
  }

  Widget countryTotravelWidget() {
    countryToTravelcontainerColor =
        countryTotravelHint != 'Select any option' ? true : false;
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: text(context, 'Country to travel', 12.sp,
              boldText: FontWeight.w600,
              color: AppColors.blackColor,
              fontFamily: 'Poppins-SemiBold'),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: text(
              context, 'Select any of the option from the drop down', 10.sp,
              boldText: FontWeight.w400,
              color: const Color(0xff757575),
              fontFamily: 'Poppins'),
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    mainIndex--;
                    // slectedIndex = 1;
                    // completeIndex = 1;
                    mainIndex = 1;
                    completeIndex = 1;
                    slectedIndex = 1;
                    log('mainIndex = $mainIndex');
                    log('slectedIndex = $slectedIndex');
                    log('completeIndex = $completeIndex');
                  });
                },
                child:
                    destionNextButtonWidgte(Icons.arrow_back_ios_new_outlined)),
            Stack(
              fit: StackFit.loose,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 5.w, right: 5.w),
                  height: 36.h,
                  width: 221.w,
                  margin: EdgeInsets.only(top: 5.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor, width: 1),
                    borderRadius: BorderRadius.circular(5),
                    shape: BoxShape.rectangle,
                  ),
                  child: DropdownButton<String>(
                    borderRadius: BorderRadius.circular(6.r),
                    isExpanded: true,
                    underline: const SizedBox(),
                    value: countryTotravelHint,
                    onChanged: (String? newValue) {
                      setState(() {
                        countryTotravelHint.length == 4 &&
                                countryTotravelHint.length > 4
                            ? countryTotravelHint.substring(0, 8)
                            : countryTotravelHint = newValue!;
                      });
                    },
                    items: <String>[
                      'Select any option',
                      'Austria',
                      'Belgium',
                      'Denmark',
                      'Finland',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: text(
                          context,
                          value,
                          9.sp,
                          fontFamily: 'Poopins',
                          color: AppColors.blackColor,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Positioned(
                    left: 15,
                    top: -6,
                    child: Container(
                      padding: EdgeInsets.only(top: 2.h, left: 7.w, right: 7.w),
                      color: Colors.white,
                      child: text(context, 'Country', 10.sp,
                          color: AppColors.primaryColor,
                          fontFamily: "Poppins",
                          boldText: FontWeight.w400),
                    )),
              ],
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    mainIndex++;
                    slectedIndex++;
                    completeIndex++;
                    log('mainIndex = $mainIndex');
                    log('slectedIndex = $slectedIndex');
                    log('completeIndex = $completeIndex');
                  });
                  // log('$destinationDropDownHint');
                  // if (destinationDropDownHint != 'Select any option') {
                  //   setState(() {
                  //     mainIndex++;
                  //     slectedIndex++;
                  //     completeIndex++;
                  //     log('mainIndex = $mainIndex');
                  //     log('slectedIndex = $slectedIndex');
                  //     log('completeIndex = $completeIndex');
                  //   });
                  // }
                },
                child: countryToTravelNextButtonWidgte(
                    Icons.arrow_forward_ios_rounded)),
          ],
        )
      ],
    );
  }

  bool durationStartDate = true;
  bool durationDuration = false;
  Widget durationWidget() {
    durationcontainerColor =
        durationDurationHint != 'Select any option' ? true : false;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  durationStartDate = true;
                  durationDuration = false;
                });
              },
              child: text(
                context,
                'Start Date',
                durationStartDate ? 12.sp : 10.sp,
                boldText: durationStartDate ? FontWeight.w600 : FontWeight.w400,
                color: AppColors.blackColor,
                fontFamily: durationStartDate ? 'Poppins-SemiBold' : "Poppins",
              ),
            ),
            SizedBox(width: 10.w),
            Container(
              height: 10.h,
              width: 2.w,
              color: AppColors.greyButtonColor,
            ),
            SizedBox(width: 10.w),
            InkWell(
              onTap: () {
                setState(() {
                  durationStartDate = false;
                  durationDuration = true;
                });
              },
              child: text(
                context,
                'Duration',
                durationDuration ? 12.sp : 10.sp,
                boldText: durationDuration ? FontWeight.w600 : FontWeight.w400,
                color: AppColors.blackColor,
                fontFamily: durationDuration ? 'Poppins-SemiBold' : 'Poppins',
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: text(
            context,
            'Select any of the option from the drop down',
            10.sp,
            boldText: FontWeight.w400,
            color: const Color(0xff757575),
            fontFamily: 'Poppins',
          ),
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    mainIndex = 2;
                    completeIndex = 2;
                    slectedIndex = 2;
                    log('mainIndex = $mainIndex');
                    log('slectedIndex = $slectedIndex');
                    log('completeIndex = $completeIndex');
                  });
                },
                child: countryToTravelNextButtonWidgte(
                    Icons.arrow_back_ios_new_outlined)),
            durationStartDate ? durationWidget2() : durationWidget1(),
            InkWell(
                onTap: () {
                  setState(() {
                    mainIndex++;
                    slectedIndex++;
                    completeIndex++;
                    log('mainIndex = $mainIndex');
                    log('slectedIndex = $slectedIndex');
                    log('completeIndex = $completeIndex');
                  });
                  // if (durationDurationHint != 'Select any option') {
                  //   mainIndex++;
                  //   slectedIndex++;
                  //   completeIndex++;
                  //   log('mainIndex = $mainIndex');
                  //   log('slectedIndex = $slectedIndex');
                  //   log('completeIndex = $completeIndex');
                  // }
                },
                child:
                    durationNextButtonWidgte(Icons.arrow_forward_ios_rounded)),
          ],
        )
      ],
    );
  }

  Widget durationWidget1() {
    return Stack(
      fit: StackFit.loose,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          height: 36.h,
          width: 221.w,
          margin: EdgeInsets.only(top: 5.h),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor, width: 1),
            borderRadius: BorderRadius.circular(5),
            shape: BoxShape.rectangle,
          ),
          child: DropdownButton<String>(
            borderRadius: BorderRadius.circular(6.r),
            isExpanded: true,
            underline: const SizedBox(),
            value: durationDurationHint,
            onChanged: (String? newValue) {
              setState(() {
                durationDurationHint.length == 4 &&
                        durationDurationHint.length > 4
                    ? durationDurationHint.substring(0, 8)
                    : durationDurationHint = newValue!;
              });
            },
            items: <String>[
              'Select any option',
              'Austria',
              'Belgium',
              'Denmark',
              'Finland',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: text(
                  context,
                  value,
                  9.sp,
                  fontFamily: 'Poopins',
                  color: AppColors.blackColor,
                ),
              );
            }).toList(),
          ),
        ),
        Positioned(
            left: 15,
            top: -6,
            child: Container(
              padding: EdgeInsets.only(top: 2.h, left: 7.w, right: 7.w),
              color: Colors.white,
              child: text(context, 'Duration', 10.sp,
                  color: AppColors.primaryColor,
                  fontFamily: "Poppins",
                  boldText: FontWeight.w400),
            )),
      ],
    );
  }

  Widget durationWidget2() {
    return Stack(
      fit: StackFit.loose,
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 5.w, right: 5.w),
            height: 36.h,
            width: 221.w,
            margin: EdgeInsets.only(top: 5.h),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryColor, width: 1),
              borderRadius: BorderRadius.circular(5),
              shape: BoxShape.rectangle,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(
                  context,
                  'Start Date',
                  9.sp,
                  color: Color(0xff6C6C6C),
                  fontFamily: "Poppins",
                  boldText: FontWeight.w400,
                ),
                InkWell(
                  onTap: () {
                    DateFormCustom().getDateNow(context).then((value) {
                      setState(() {
                        // print(DateTime.tryParse(value));

                        // // DateTime.tryParse(value);
                        log('start date =  $value');
                      });
                    });
                  },
                  child: Icon(
                    Icons.calendar_month,
                    color: AppColors.primaryColor,
                  ),
                )
              ],
            )),
        Positioned(
            left: 15,
            top: -6,
            child: Container(
              padding: EdgeInsets.only(top: 2.h, left: 7.w, right: 7.w),
              color: Colors.white,
              child: text(
                context,
                'Start Date',
                10.sp,
                color: AppColors.primaryColor,
                fontFamily: "Poppins",
                boldText: FontWeight.w400,
              ),
            )),
      ],
    );
  }

  bool travelTyTravelTyppebool = true;

  int? finalTravelType;
  bool travelTypfamilybool = false;
  bool travelTypChildrenbool = false;

  bool travelTypeIndividual = false;
  bool travelTypeFamily = false;

  bool familySuponse = false;
  bool familyChildren = false;

  bool children1bool = false;
  bool children2bool = false;
  bool children3bool = false;

  Widget travelTypeWidget() {
    travelTypecontainerColor = finalTravelType != null ? true : false;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  travelTyTravelTyppebool = true;
                  travelTypfamilybool = false;
                  travelTypChildrenbool = false;
                });
              },
              child: text(
                context,
                'Travel Type',
                travelTyTravelTyppebool ? 12.sp : 10.sp,
                boldText:
                    travelTyTravelTyppebool ? FontWeight.w600 : FontWeight.w400,
                color: AppColors.blackColor,
                fontFamily:
                    travelTyTravelTyppebool ? 'Poppins-SemiBold' : "Poppins",
              ),
            ),
            SizedBox(width: 10.w),
            Container(
              height: 10.h,
              width: 2.w,
              color: AppColors.greyButtonColor,
            ),
            SizedBox(width: 10.w),
            InkWell(
              onTap: () {
                setState(() {
                  travelTyTravelTyppebool = false;
                  travelTypfamilybool = true;
                  travelTypChildrenbool = false;
                });
              },
              child: text(
                context,
                'Family',
                travelTypfamilybool ? 12.sp : 10.sp,
                boldText:
                    travelTypfamilybool ? FontWeight.w600 : FontWeight.w400,
                color: AppColors.blackColor,
                fontFamily:
                    travelTypfamilybool ? 'Poppins-SemiBold' : 'Poppins',
              ),
            ),
            SizedBox(width: 10.w),
            Container(
              height: 10.h,
              width: 2.w,
              color: AppColors.greyButtonColor,
            ),
            SizedBox(width: 10.w),
            InkWell(
              onTap: () {
                setState(() {
                  travelTyTravelTyppebool = false;
                  travelTypfamilybool = false;
                  travelTypChildrenbool = true;
                });
              },
              child: text(
                context,
                'Children',
                travelTypChildrenbool ? 12.sp : 10.sp,
                boldText:
                    travelTypChildrenbool ? FontWeight.w600 : FontWeight.w400,
                color: AppColors.blackColor,
                fontFamily:
                    travelTypChildrenbool ? 'Poppins-SemiBold' : 'Poppins',
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: text(
            context,
            'Select any of the option from the drop down',
            10.sp,
            boldText: FontWeight.w400,
            color: const Color(0xff757575),
            fontFamily: 'Poppins',
          ),
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    mainIndex = 3;
                    completeIndex = 3;
                    slectedIndex = 3;
                    log('mainIndex = $mainIndex');
                    log('slectedIndex = $slectedIndex');
                    log('completeIndex = $completeIndex');
                  });
                },
                child: durationNextButtonWidgte(
                    Icons.arrow_back_ios_new_outlined)),
            travelTyTravelTyppebool
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              finalTravelType = 1;
                              travelTypeIndividual = true;
                              travelTypeFamily = false;
                            });
                          },
                          child: travelTypeIndividualWidget()),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              finalTravelType = 2;
                              travelTypeIndividual = false;
                              travelTypeFamily = true;
                            });
                          },
                          child: travelTypeFamilyWidget()),
                    ],
                  )
                : travelTypfamilybool
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    familySuponse = true;
                                    familyChildren = false;
                                  });
                                },
                                child: familySuponseWidget()),
                            SizedBox(
                              width: 10.w,
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    familySuponse = false;
                                    familyChildren = true;
                                  });
                                },
                                child: familyChildrenWidget()),
                          ])
                    : travelTypChildrenbool
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        children1bool = true;
                                        children2bool = false;
                                        children3bool = false;
                                      });
                                    },
                                    child: children1Widgt()),
                                SizedBox(
                                  width: 10.w,
                                ),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        children1bool = false;
                                        children2bool = true;
                                        children3bool = false;
                                      });
                                    },
                                    child: children2Widgt()),
                                SizedBox(
                                  width: 10.w,
                                ),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        children1bool = false;
                                        children2bool = false;
                                        children3bool = true;
                                      });
                                    },
                                    child: children3Widgt())
                              ])
                        : const SizedBox(),
            InkWell(
                onTap: () {
                  setState(() {
                    mainIndex++;
                    slectedIndex++;
                    completeIndex++;
                    log('mainIndex = $mainIndex');
                    log('slectedIndex = $slectedIndex');
                    log('completeIndex = $completeIndex');
                  });
                  // if (durationDurationHint != 'Select any option') {
                  //   mainIndex++;
                  //   slectedIndex++;
                  //   completeIndex++;
                  //   log('mainIndex = $mainIndex');
                  //   log('slectedIndex = $slectedIndex');
                  //   log('completeIndex = $completeIndex');
                  // }
                },
                child: travelTypeNextButtonWidgte(
                    Icons.arrow_forward_ios_rounded)),
          ],
        )
      ],
    );
  }

  Widget travelTypeIndividualWidget() {
    return Container(
      width: 100.w,
      height: 33.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: travelTypeIndividual
              ? AppColors.primaryColor
              : Colors.transparent,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.065),
            blurRadius: 4.r,
            offset: Offset(0, 8.r),
            spreadRadius: 0, // Shadow position
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: const AssetImage(
              AppImages.individualImage,
            ),
            height: 24.h,
            width: 12.h,
          ),
          text(
            context,
            'Individual',
            12.sp,
            boldText: FontWeight.w500,
            fontFamily: 'Poppins-Medium',
          )
        ],
      ),
    );
  }

  Widget travelTypeFamilyWidget() {
    return Container(
      width: 100.w,
      height: 33.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: travelTypeFamily ? AppColors.primaryColor : Colors.transparent,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.065),
            blurRadius: 4.r,
            offset: Offset(0, 8.r),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: const AssetImage(
              AppImages.familyImage,
            ),
            height: 24.h,
            width: 22.h,
            fit: BoxFit.fitWidth,
          ),
          text(
            context,
            'Family',
            12.sp,
            boldText: FontWeight.w500,
            fontFamily: 'Poppins-Medium',
          )
        ],
      ),
    );
  }

  Widget familySuponseWidget() {
    return Container(
      width: 100.w,
      height: 33.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: familySuponse ? AppColors.primaryColor : Colors.transparent,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.065),
            blurRadius: 4,
            offset: Offset(0, 8.r),
            spreadRadius: 0, // Shadow position
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: const AssetImage(
              AppImages.suponseImage,
            ),
            height: 24.h,
            width: 12.h,
          ),
          text(
            context,
            'Spouse',
            12.sp,
            boldText: FontWeight.w500,
            fontFamily: 'Poppins-Medium',
          )
        ],
      ),
    );
  }

  Widget familyChildrenWidget() {
    return Container(
      width: 100.w,
      height: 33.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: familyChildren ? AppColors.primaryColor : Colors.transparent,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.065),
            blurRadius: 4.r,
            offset: Offset(0, 8.r),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: const AssetImage(
              AppImages.childrenImage,
            ),
            height: 24.h,
            width: 22.h,
            fit: BoxFit.fitWidth,
          ),
          text(
            context,
            'Children',
            12.sp,
            boldText: FontWeight.w500,
            fontFamily: 'Poppins-Medium',
          )
        ],
      ),
    );
  }

  Widget children1Widgt() {
    return Container(
      width: 61.w,
      height: 33.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: children1bool ? AppColors.primaryColor : Colors.transparent,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.065),
            blurRadius: 4.r,
            offset: Offset(0, 8.r),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: const AssetImage(
              AppImages.children1Image,
            ),
            height: 18.h,
            width: 22.h,
            fit: BoxFit.fitHeight,
          ),
          text(
            context,
            '1',
            12.sp,
            boldText: FontWeight.w500,
            fontFamily: 'Poppins-Medium',
          ),
        ],
      ),
    );
  }

  Widget children2Widgt() {
    return Container(
      width: 61.w,
      height: 33.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: children2bool ? AppColors.primaryColor : Colors.transparent,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.065),
            blurRadius: 4.r,
            offset: Offset(0, 8.r),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: const AssetImage(
              AppImages.children2Image,
            ),
            height: 24.h,
            width: 22.h,
            fit: BoxFit.fitWidth,
          ),
          text(
            context,
            '2',
            12.sp,
            boldText: FontWeight.w500,
            fontFamily: 'Poppins-Medium',
          )
        ],
      ),
    );
  }

  Widget children3Widgt() {
    return Container(
      width: 61.w,
      height: 33.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: children3bool ? AppColors.primaryColor : Colors.transparent,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.065),
            blurRadius: 4.r,
            offset: Offset(0, 8.r),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: const AssetImage(
              AppImages.children3Image,
            ),
            height: 24.h,
            width: 22.h,
            fit: BoxFit.fitWidth,
          ),
          text(
            context,
            '3',
            12.sp,
            boldText: FontWeight.w500,
            fontFamily: 'Poppins-Medium',
          )
        ],
      ),
    );
  }

  bool importantInfoDateOfBirth = true;
  bool importantInfoCNIC = false;
  bool importantInfoCovid = false;

  bool importantInfoCovidNo = false;
  bool importantInfoCovidYes = false;

  Widget importantInformationWidget() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  importantInfoDateOfBirth = true;
                  importantInfoCNIC = false;
                  importantInfoCovid = false;
                });
              },
              child: text(
                context,
                'Date of Birth',
                importantInfoDateOfBirth ? 12.sp : 10.sp,
                boldText: importantInfoDateOfBirth
                    ? FontWeight.w600
                    : FontWeight.w400,
                color: AppColors.blackColor,
                fontFamily:
                    importantInfoDateOfBirth ? 'Poppins-SemiBold' : "Poppins",
              ),
            ),
            SizedBox(width: 10.w),
            Container(
              height: 10.h,
              width: 2.w,
              color: AppColors.greyButtonColor,
            ),
            SizedBox(width: 10.w),
            InkWell(
              onTap: () {
                setState(() {
                  // travelTyTravelTyppebool = false;

                  setState(() {
                    importantInfoDateOfBirth = false;
                    importantInfoCNIC = true;
                    importantInfoCovid = false;
                  });
                });
              },
              child: text(
                context,
                'CNIC',
                importantInfoCNIC ? 12.sp : 10.sp,
                boldText: importantInfoCNIC ? FontWeight.w600 : FontWeight.w400,
                color: AppColors.blackColor,
                fontFamily: importantInfoCNIC ? 'Poppins-SemiBold' : 'Poppins',
              ),
            ),
            SizedBox(width: 10.w),
            Container(
              height: 10.h,
              width: 2.w,
              color: AppColors.greyButtonColor,
            ),
            SizedBox(width: 10.w),
            InkWell(
              onTap: () {
                setState(() {
                  importantInfoDateOfBirth = false;
                  importantInfoCNIC = false;
                  importantInfoCovid = true;
                });
              },
              child: text(
                context,
                'Covid covered',
                importantInfoCovid ? 12.sp : 10.sp,
                boldText:
                    importantInfoCovid ? FontWeight.w600 : FontWeight.w400,
                color: AppColors.blackColor,
                fontFamily: importantInfoCovid ? 'Poppins-SemiBold' : 'Poppins',
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: text(
            context,
            'Select any of the option from the drop down',
            10.sp,
            boldText: FontWeight.w400,
            color: const Color(0xff757575),
            fontFamily: 'Poppins',
          ),
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    mainIndex = 4;
                    completeIndex = 4;
                    slectedIndex = 4;
                    log('mainIndex = $mainIndex');
                    log('slectedIndex = $slectedIndex');
                    log('completeIndex = $completeIndex');
                  });
                },
                child: travelTypeNextButtonWidgte(
                    Icons.arrow_back_ios_new_rounded)),
            importantInfoDateOfBirth
                ? importantInformationDateOfBirth()
                : importantInfoCNIC
                    ? importantInformationCNIC()
                    : importantInfoCovid
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        importantInfoCovidNo = true;
                                        importantInfoCovidYes = false;
                                      });
                                    },
                                    child: coviedCoveredNoWidget()),
                                SizedBox(
                                  width: 10.w,
                                ),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        importantInfoCovidNo = false;
                                        importantInfoCovidYes = true;
                                      });
                                    },
                                    child: coviedCoveredYesWidget()),
                              ])
                        : const SizedBox(),
            SizedBox(
              height: 33.h,
              width: 33.w,
            ),
          ],
        )
      ],
    );
  }

  Widget importantInformationDateOfBirth() {
    return Stack(
      fit: StackFit.loose,
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 5.w, right: 5.w),
            height: 36.h,
            width: 221.w,
            margin: EdgeInsets.only(top: 5.h),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryColor, width: 1),
              borderRadius: BorderRadius.circular(5),
              shape: BoxShape.rectangle,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(
                  context,
                  'Start Date',
                  9.sp,
                  color: Color(0xff6C6C6C),
                  fontFamily: "Poppins",
                  boldText: FontWeight.w400,
                ),
                Icon(
                  Icons.calendar_month,
                  color: AppColors.primaryColor,
                )
              ],
            )),
        Positioned(
            left: 15,
            top: -6,
            child: Container(
              padding: EdgeInsets.only(top: 2.h, left: 7.w, right: 7.w),
              color: Colors.white,
              child: text(
                context,
                'Start Date',
                10.sp,
                color: AppColors.primaryColor,
                fontFamily: "Poppins",
                boldText: FontWeight.w400,
              ),
            )),
      ],
    );
  }

  Widget importantInformationCNIC() {
    return Stack(
      fit: StackFit.loose,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          height: 36.h,
          width: 221.w,
          margin: EdgeInsets.only(top: 5.h),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor, width: 1),
            borderRadius: BorderRadius.circular(5),
            shape: BoxShape.rectangle,
          ),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "xxxxx-xxxxxxx-x",
                hintStyle: TextStyle(
                    color: AppColors.greyshadehintColor,
                    fontSize: 11.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400)
                // hintText: text(
                //   context,
                //
                //   11.sp,
                //   boldText: FontWeight.w400,
                //   fontFamily: 'Poppins'
                // ),
                ),
          ),
        ),
        Positioned(
            left: 15,
            top: -6,
            child: Container(
              padding: EdgeInsets.only(top: 2.h, left: 7.w, right: 7.w),
              color: Colors.white,
              child: text(
                context,
                'Enter your CNIC',
                10.sp,
                color: AppColors.primaryColor,
                fontFamily: "Poppins",
                boldText: FontWeight.w400,
              ),
            )),
      ],
    );
  }

  Widget coviedCoveredNoWidget() {
    return Container(
      width: 100.w,
      height: 33.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: importantInfoCovidNo
              ? AppColors.primaryColor
              : Colors.transparent,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.065),
            blurRadius: 4,
            offset: Offset(0, 8.r),
            spreadRadius: 0, // Shadow position
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text(
            context,
            'No',
            10.sp,
            boldText: FontWeight.w500,
            fontFamily: 'Poppins-Medium',
          )
        ],
      ),
    );
  }

  Widget coviedCoveredYesWidget() {
    return Container(
      width: 100.w,
      height: 33.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: importantInfoCovidYes
              ? AppColors.primaryColor
              : Colors.transparent,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.065),
            blurRadius: 4.r,
            offset: Offset(0, 8.r),
            // spreadRadius: 5, // Shadow position
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text(
            context,
            'Yes',
            10.sp,
            boldText: FontWeight.w500,
            fontFamily: 'Poppins-Medium',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '(15% Prem. Increased)',
                style: TextStyle(
                    color: AppColors.greyshadehintColor, fontSize: 8.sp),
              ),
            ],
          )
          //  text(
          //   context,
          //   '(15% Prem. Increased)',
          //   10.sp,
          //   // boldText: FontWeight.w400,
          //   fontFamily: 'Poppins',
          //   textalign: Alignment.center
          // )
        ],
      ),
    );
  }
}
