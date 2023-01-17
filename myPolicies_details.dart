// ignore_for_file: must_be_immutable

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myuicapp/utils/approutes.dart';
import 'package:myuicapp/views/my_policies/policies_info/claims/policy_myClaims_screen.dart';
import 'package:myuicapp/views/my_policies/policies_info/policy_account_status.dart';
import 'package:myuicapp/views/my_policies/policies_info/policy_financial_detail.dart';
import 'package:myuicapp/views/my_policies/policies_info/policy_history_detail.dart';
import 'package:myuicapp/views/my_policies/policies_info/policy_installment_plan.dart';
import 'package:myuicapp/views/my_policies/policies_info/policy_reports_screen.dart';
import 'package:myuicapp/views/my_policies/policies_info/policy_request_details.dart';
import 'package:myuicapp/views/my_policies/policies_info/policy_vehicle_detail.dart';
import 'package:myuicapp/views/my_policies/policies_info/policy_view_docs.dart';
import 'package:page_transition/page_transition.dart';
import '../../models/myPoliciesModel.dart';
import '../../utils/colors_constants.dart';

class MyPolicyDetailsScreen extends StatefulWidget {
  MyPolicyModel items;
   MyPolicyDetailsScreen({Key? key,required this.items}) : super(key: key);

  @override
  State<MyPolicyDetailsScreen> createState() => _MyPolicyDetailsScreenState();
}

class _MyPolicyDetailsScreenState extends State<MyPolicyDetailsScreen> {
  MyPolicyModel? items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(mounted){
      setState(() {
        items = widget.items;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
              onTap: ()=> AppRoutes.pop(context),
              child: Icon(FeatherIcons.chevronLeft,color: white)),
          flexibleSpace: Image.asset("assets/images/appbarimage.png",
              fit: BoxFit.fill, alignment: Alignment.bottomRight),
          title: Text("Policy Details",style:TextStyle(fontSize: 18.sp,fontFamily: "Poppins-Medium",color: white))),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            )),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/exec22.png",
                      height: 40.h,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.55,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(items!.productName1.toString(),
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins-Medium',
                                  color: blackButtonColor)),
                          Text(items!.productName.toString(),
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontFamily: 'Poppins-SemiBold',
                                  color: purpleColor)),
                          Text(items!.CoverDescription.toString(),
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins-Medium',
                                  color: blackButtonColor)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: white),
                              boxShadow: [
                                BoxShadow(blurRadius: 4.r, color: black.withOpacity(0.25))
                              ]),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 31.w,
                                        height: 31.h,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: purpleColor.withOpacity(0.1),
                                        ),
                                        padding: const EdgeInsets.all(10),
                                        child: Image.asset("assets/icons/d1.png"),
                                      ),
                                      SizedBox(width: 8.w),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            items!.FullName.toString(),
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontFamily: 'Poppins-SemiBold',
                                                color: blackButtonColor),
                                          ),
                                          SizedBox(
                                            width: 90.w,
                                            child: Text(
                                              items!.CNIC.toString(),
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Poppins-Regular',
                                                  color: greyColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 6.w,
                                          height: 6.h,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: greenColor,
                                          ),
                                        ),
                                        SizedBox(width: 3.w),
                                        Text(
                                          "Active",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontFamily: 'Poppins-Regular',
                                              color: greenColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 15),
                                            child: Image.asset(
                                              items!.insuranceType.toString() == "Conventional"
                                                  ? "assets/icons/conventionalbanner.png"
                                                  : "assets/icons/islamicbanner.png",
                                              width: 100.w,
                                              height: 18.h,
                                            ),
                                          ),
                                          Positioned(
                                            left: 35,
                                            top: 5,
                                            child: Text(items!.insuranceType.toString(),
                                                style: TextStyle(
                                                    fontSize: 8.sp,
                                                    fontFamily: 'Poppins-SemiBold',
                                                    color: items!.insuranceType.toString() ==
                                                        "Conventional"
                                                        ? purpleColor
                                                        : greenColor)),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10, top: 5, bottom: 5),
                                        decoration: BoxDecoration(
                                            color:  items!.paid.toString()=="true"?Color(0xff39A8CB):Color(0xFFCB3939).withOpacity(0.84),
                                            borderRadius: BorderRadius.circular(5.r),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 8.r,
                                                  color: black.withOpacity(0.25))
                                            ]),
                                        child: Text(
                                          items!.paid.toString()=="true"?"Paid":"Unpaid",
                                          style: TextStyle(
                                              fontFamily: 'Poppins-Medium',
                                              fontSize: 12.sp,
                                              color: white),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5),
                                        child: Text("Policy number:",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontFamily: 'Poppins-Medium',
                                                color: black)),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        width: MediaQuery.of(context).size.width * 0.7,
                                        decoration: BoxDecoration(
                                            color: white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(6.r),
                                                topRight: Radius.circular(6.r),
                                                bottomRight: Radius.circular(6.r)),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 4.r,
                                                  color: black.withOpacity(0.25))
                                            ]),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(items!.policyNo.toString(),
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        fontFamily: 'Poppins-Regular',
                                                        color: purpleColor)),
                                              ],
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  Clipboard.setData(ClipboardData(
                                                      text: items!.policyNo.toString()))
                                                      .then((value) =>
                                                      ScaffoldMessenger.of(context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          duration:
                                                          const Duration(seconds: 1),
                                                          backgroundColor: purpleColor,
                                                          content: Text(
                                                            'Copied',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                'Poppins-Regular',
                                                                fontSize: 14.sp,
                                                                color: white),
                                                          ),
                                                        ),
                                                      ));
                                                },
                                                child: const Icon(
                                                  FeatherIcons.copy,
                                                  color: purpleColor,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(height: 10.h),
                                      Text(
                                        "End no.",
                                        style: TextStyle(
                                            fontFamily: "Poppins-Light", fontSize: 10.sp),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10, top: 5, bottom: 5),
                                        decoration: BoxDecoration(
                                            color: Color(0xffFFB080),
                                            borderRadius: BorderRadius.circular(5.r),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 8.r,
                                                  color: black.withOpacity(0.25))
                                            ]),
                                        child: Text(
                                          items!.endCount.toString(),
                                          style: TextStyle(
                                              fontFamily: 'Poppins-Medium',
                                              fontSize: 12.sp,
                                              color: white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    width: MediaQuery.of(context).size.width * 0.55,
                                    decoration: BoxDecoration(
                                        color: purpleColor,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(6.r),
                                          bottomRight: Radius.circular(6.r),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 4.r, color: black.withOpacity(0.25))
                                        ]),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                                "${items!.startDate.toString().substring(0, 10)} - ${items!.expiryDate.toString().substring(0, 11)} ",
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontFamily: 'Poppins-Regular',
                                                    color: white)),
                                            Text(" (365)",
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontFamily: 'Poppins-Regular',
                                                    color: Color(0xff39A8CB))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text("Both Dates Inclusive ",
                                      style: TextStyle(
                                          fontSize: 8.sp,
                                          fontFamily: 'Poppins-Light',
                                          color: black)),
                                ],
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 10),
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: white),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4.r,
                                    color: black.withOpacity(0.25))
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //First
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        AppRoutes.push(context, PageTransitionType.fade, PolicyVehicleDetail());
                                      },
                                      child: Container(
                                        width: 135.w,
                                        height: 135.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xffFF9381),
                                            borderRadius:
                                            BorderRadius.circular(10.r),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 4.r,
                                                  color:
                                                  black.withOpacity(0.25))
                                            ]),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 10,
                                                bottom: 10,
                                              ),
                                              child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                            "Vehicle\nDetails",
                                                            style: TextStyle(
                                                                fontSize:
                                                                12.sp,
                                                                fontFamily:
                                                                'Poppins-Medium',
                                                                color:
                                                                white)),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right:
                                                      8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                        children: [
                                                          SizedBox(
                                                            width: 100.w,
                                                            child: Text(
                                                                "Tap to see details of your vehicle",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                    10.sp,
                                                                    fontFamily:
                                                                    'Poppins-Medium',
                                                                    color:
                                                                    white),textAlign: TextAlign.end,),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                            Positioned(
                                              right: -20,
                                              top: -15,
                                              child: Container(
                                                height: 61.h,
                                                width: 61.h,
                                                margin: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.white
                                                        .withOpacity(0.3),
                                                    shape: BoxShape.circle),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(
                                                      15.0),
                                                  child: Image.asset(
                                                      "assets/icons/r1.png"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        AppRoutes.push(context, PageTransitionType.fade, PolicyFinacialDetail());
                                      },
                                      child: Container(
                                        width: 135.w,
                                        height: 135.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xff61D3F3),
                                            borderRadius:
                                            BorderRadius.circular(10.r),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 4.r,
                                                  color:
                                                  black.withOpacity(0.25))
                                            ]),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 10,
                                                bottom: 10,
                                              ),
                                              child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                            "Financial\nDetails",
                                                            style: TextStyle(
                                                                fontSize:
                                                                12.sp,
                                                                fontFamily:
                                                                'Poppins-Medium',
                                                                color:
                                                                white)),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right:
                                                      8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                        children: [
                                                          SizedBox(
                                                            width: 100.w,
                                                            child: Text(
                                                              "Tap to see your financial details",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  10.sp,
                                                                  fontFamily:
                                                                  'Poppins-Medium',
                                                                  color:
                                                                  white),textAlign: TextAlign.end,),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                            Positioned(
                                              right: -20,
                                              top: -15,
                                              child: Container(
                                                height: 61.h,
                                                width: 61.h,
                                                margin: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.white
                                                        .withOpacity(0.3),
                                                    shape: BoxShape.circle),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(
                                                      15.0),
                                                  child: Image.asset(
                                                      "assets/icons/r2.png"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              //Second
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        AppRoutes.push(context, PageTransitionType.fade, PolicyInstallmentPlan());
                                      },
                                      child: Container(
                                        width: 135.w,
                                        height: 135.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xffF188BA),
                                            borderRadius:
                                            BorderRadius.circular(10.r),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 4.r,
                                                  color:
                                                  black.withOpacity(0.25))
                                            ]),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 10,
                                                bottom: 10,
                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                            "Installment\nPlan",
                                                            style: TextStyle(
                                                                fontSize:
                                                                12.sp,
                                                                fontFamily:
                                                                'Poppins-Medium',
                                                                color:
                                                                white)),
                                                      ],
                                                    ),
                                                    Text.rich(
                                                      TextSpan(
                                                        children: [
                                                          TextSpan(
                                                              text:
                                                              "PKR 2,000",
                                                              style: TextStyle(
                                                                  fontSize: 14.sp,
                                                                  color: white,
                                                                  fontFamily: 'Poppins-SemiBold')),
                                                          TextSpan(
                                                              text: "/month",
                                                              style: TextStyle(
                                                                  fontSize: 10.sp,
                                                                  color: white,
                                                                  fontFamily: 'Poppins-Regular')),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right:
                                                      8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                        children: [
                                                          SizedBox(
                                                            width: 100.w,
                                                            child: Text(
                                                              "10 paid \n 2 unpaid",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  10.sp,
                                                                  fontFamily:
                                                                  'Poppins-Medium',
                                                                  color:
                                                                  white),textAlign: TextAlign.end,),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                            Positioned(
                                              right: -20,
                                              top: -15,
                                              child: Container(
                                                height: 61.h,
                                                width: 61.h,
                                                margin: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.white
                                                        .withOpacity(0.3),
                                                    shape: BoxShape.circle),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(
                                                      15.0),
                                                  child: Image.asset(
                                                      "assets/icons/r3.png"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        AppRoutes.push(context, PageTransitionType.fade, PolicyAccountStatus());
                                      },
                                      child: Container(
                                        width: 135.w,
                                        height: 135.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xffABBDF9),
                                            borderRadius:
                                            BorderRadius.circular(10.r),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 4.r,
                                                  color:
                                                  black.withOpacity(0.25))
                                            ]),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 10,
                                                bottom: 10,
                                              ),
                                              child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                            "Account\nStatus",
                                                            style: TextStyle(
                                                                fontSize:
                                                                12.sp,
                                                                fontFamily:
                                                                'Poppins-Medium',
                                                                color:
                                                                white)),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right:
                                                      8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                        children: [
                                                          SizedBox(
                                                            width: 100.w,
                                                            child: Text(
                                                              "Tap to see your account status",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  10.sp,
                                                                  fontFamily:
                                                                  'Poppins-Medium',
                                                                  color:
                                                                  white),textAlign: TextAlign.end,),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                            Positioned(
                                              right: -20,
                                              top: -15,
                                              child: Container(
                                                height: 61.h,
                                                width: 61.h,
                                                margin: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.white
                                                        .withOpacity(0.3),
                                                    shape: BoxShape.circle),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(
                                                      15.0),
                                                  child: Image.asset(
                                                      "assets/icons/r4.png"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              //Third
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        AppRoutes.push(context, PageTransitionType.fade, PolicyHistoryDetail());
                                      },
                                      child: Container(
                                        width: 135.w,
                                        height: 135.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xff7C77E7),
                                            borderRadius:
                                            BorderRadius.circular(10.r),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 4.r,
                                                  color:
                                                  black.withOpacity(0.25))
                                            ]),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 10,
                                                bottom: 10,
                                              ),
                                              child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                            "History",
                                                            style: TextStyle(
                                                                fontSize:
                                                                12.sp,
                                                                fontFamily:
                                                                'Poppins-Medium',
                                                                color:
                                                                white)),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right:
                                                      8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                        children: [
                                                          SizedBox(
                                                            width: 100.w,
                                                            child: Text(
                                                              "Tap to see your history",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  10.sp,
                                                                  fontFamily:
                                                                  'Poppins-Medium',
                                                                  color:
                                                                  white),textAlign: TextAlign.end,),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                            Positioned(
                                              right: -20,
                                              top: -15,
                                              child: Container(
                                                height: 61.h,
                                                width: 61.h,
                                                margin: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.white
                                                        .withOpacity(0.3),
                                                    shape: BoxShape.circle),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(
                                                      15.0),
                                                  child: Image.asset(
                                                      "assets/icons/r5.png"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        AppRoutes.push(context, PageTransitionType.fade, PolicyReportsScreen());
                                      },
                                      child: Container(
                                        width: 135.w,
                                        height: 135.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xffFFB080),
                                            borderRadius:
                                            BorderRadius.circular(10.r),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 4.r,
                                                  color:
                                                  black.withOpacity(0.25))
                                            ]),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 10,
                                                bottom: 10,
                                              ),
                                              child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                            "Reports",
                                                            style: TextStyle(
                                                                fontSize:
                                                                12.sp,
                                                                fontFamily:
                                                                'Poppins-Medium',
                                                                color:
                                                                white)),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right:
                                                      8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                        children: [
                                                          SizedBox(
                                                            width: 100.w,
                                                            child: Text(
                                                              "View PDF's of your documents",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  10.sp,
                                                                  fontFamily:
                                                                  'Poppins-Medium',
                                                                  color:
                                                                  white),textAlign: TextAlign.end,),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                            Positioned(
                                              right: -20,
                                              top: -15,
                                              child: Container(
                                                height: 61.h,
                                                width: 61.h,
                                                margin: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.white
                                                        .withOpacity(0.3),
                                                    shape: BoxShape.circle),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(
                                                      15.0),
                                                  child: Image.asset(
                                                      "assets/icons/r6.png"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              //Fourth
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        AppRoutes.push(context, PageTransitionType.fade, PolicyViewDocs());
                                      },
                                      child: Container(
                                        width: 135.w,
                                        height: 135.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xff6DE0B7),
                                            borderRadius:
                                            BorderRadius.circular(10.r),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 4.r,
                                                  color:
                                                  black.withOpacity(0.25))
                                            ]),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 10,
                                                bottom: 10,
                                              ),
                                              child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                            "Images/\nDocuments",
                                                            style: TextStyle(
                                                                fontSize:
                                                                12.sp,
                                                                fontFamily:
                                                                'Poppins-Medium',
                                                                color:
                                                                white)),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right:
                                                      8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                        children: [
                                                          SizedBox(
                                                            width: 100.w,
                                                            child: Text(
                                                              "You can view and save images of your documents",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  10.sp,
                                                                  fontFamily:
                                                                  'Poppins-Medium',
                                                                  color:
                                                                  white),textAlign: TextAlign.end,),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                            Positioned(
                                              right: -20,
                                              top: -15,
                                              child: Container(
                                                height: 61.h,
                                                width: 61.h,
                                                margin: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.white
                                                        .withOpacity(0.3),
                                                    shape: BoxShape.circle),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(
                                                      15.0),
                                                  child: Image.asset(
                                                      "assets/icons/r7.png"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        AppRoutes.push(context, PageTransitionType.fade, PolicyClaimsScreen());
                                      },
                                      child: Container(
                                        width: 135.w,
                                        height: 135.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xffF188BA),
                                            borderRadius:
                                            BorderRadius.circular(10.r),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 4.r,
                                                  color:
                                                  black.withOpacity(0.25))
                                            ]),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 10,
                                                bottom: 10,
                                              ),
                                              child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                            "Claims",
                                                            style: TextStyle(
                                                                fontSize:
                                                                12.sp,
                                                                fontFamily:
                                                                'Poppins-Medium',
                                                                color:
                                                                white)),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right:
                                                      8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                        children: [
                                                          SizedBox(
                                                            width: 100.w,
                                                            child: Text(
                                                              "See and add your claims here",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  10.sp,
                                                                  fontFamily:
                                                                  'Poppins-Medium',
                                                                  color:
                                                                  white),textAlign: TextAlign.end,),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                            Positioned(
                                              right: -20,
                                              top: -15,
                                              child: Container(
                                                height: 61.h,
                                                width: 61.h,
                                                margin: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.white
                                                        .withOpacity(0.3),
                                                    shape: BoxShape.circle),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(
                                                      15.0),
                                                  child: Image.asset(
                                                      "assets/icons/r8.png"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              //Fifth
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: 135.w,
                                        height: 135.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xff7E69E0),
                                            borderRadius:
                                            BorderRadius.circular(10.r),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 4.r,
                                                  color:
                                                  black.withOpacity(0.25))
                                            ]),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 10,
                                                bottom: 10,
                                              ),
                                              child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                            "Chat",
                                                            style: TextStyle(
                                                                fontSize:
                                                                12.sp,
                                                                fontFamily:
                                                                'Poppins-Medium',
                                                                color:
                                                                white)),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right:
                                                      8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                        children: [
                                                          SizedBox(
                                                            width: 100.w,
                                                            child: Text(
                                                              "Facing an issue? Our Customer Service Team is always ready to assist you",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  9.sp,
                                                                  fontFamily:
                                                                  'Poppins-Medium',
                                                                  color:
                                                                  white),textAlign: TextAlign.end,),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                            Positioned(
                                              right: -20,
                                              top: -15,
                                              child: Container(
                                                height: 61.h,
                                                width: 61.h,
                                                margin: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.white
                                                        .withOpacity(0.3),
                                                    shape: BoxShape.circle),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(
                                                      15.0),
                                                  child: Image.asset(
                                                      "assets/icons/r9.png"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        AppRoutes.push(context, PageTransitionType.fade, PolicyRequestDetail());
                                      },
                                      child: Container(
                                        width: 135.w,
                                        height: 135.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xffFFC37F),
                                            borderRadius:
                                            BorderRadius.circular(10.r),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 4.r,
                                                  color:
                                                  black.withOpacity(0.25))
                                            ]),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 10,
                                                bottom: 10,
                                              ),
                                              child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                            "Request\nDetails",
                                                            style: TextStyle(
                                                                fontSize:
                                                                12.sp,
                                                                fontFamily:
                                                                'Poppins-Medium',
                                                                color:
                                                                white)),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right:
                                                      8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                        children: [
                                                          SizedBox(
                                                            width: 100.w,
                                                            child: Text(
                                                              "See your request Details",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  10.sp,
                                                                  fontFamily:
                                                                  'Poppins-Medium',
                                                                  color:
                                                                  white),textAlign: TextAlign.end,),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                            Positioned(
                                              right: -20,
                                              top: -15,
                                              child: Container(
                                                height: 61.h,
                                                width: 61.h,
                                                margin: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.white
                                                        .withOpacity(0.3),
                                                    shape: BoxShape.circle),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(
                                                      15.0),
                                                  child: Image.asset(
                                                      "assets/icons/r10.png"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                        left: 33,
                        top: 178,
                        child: Image.asset(
                          "assets/icons/chain.png",
                          width: 15.w,
                          height: 40.h,
                        )),
                    Positioned(
                        right: 33,
                        top: 178,
                        child: Image.asset(
                          "assets/icons/chain.png",
                          width: 15.w,
                          height: 40.h,
                        )),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
