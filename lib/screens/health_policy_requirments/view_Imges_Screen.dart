import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:policyapp/utils/app-Color.dart';
import 'package:policyapp/utils/app-Routes.dart';
import 'package:policyapp/utils/app-TextWidget.dart';

import '../../utils/app-Images.dart';

class ViewImagesScreen extends StatefulWidget {
  const ViewImagesScreen({Key? key}) : super(key: key);

  @override
  State<ViewImagesScreen> createState() => _ViewImagesScreenState();
}

class _ViewImagesScreenState extends State<ViewImagesScreen> {
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
          'View Images',
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
              DefaultTabController(
                  length: 2, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 150.w,
                          child: const TabBar(
                            labelColor: AppColors.primaryColor,
                            unselectedLabelColor: AppColors.textGrey7A,
                            tabs: [
                              Tab(text: 'Media'),
                              Tab(text: 'Docs'),
                            ],
                          ),
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.816,
                            decoration: const BoxDecoration(
                                // color: Colors.green,
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.grey, width: 0.5))),
                            child: TabBarView(
                                physics: NeverScrollableScrollPhysics(),
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 25.h, left: 12.w, right: 12.w),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          text(
                                            context,
                                            'Client',
                                            16.sp,
                                            color: AppColors.blackshade2632,
                                            fontFamily: 'Poppins-Medium',
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                viewImageWidget(
                                                  'CNIC Front',
                                                ),
                                                viewImageWidget(
                                                  'CNIC Back',
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 18.h),
                                            child: text(
                                              context,
                                              'Spouse',
                                              16.sp,
                                              color: AppColors.blackshade2632,
                                              fontFamily: 'Poppins-Medium',
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                viewImageWidget(
                                                  'CNIC Front',
                                                ),
                                                viewImageWidget(
                                                  'CNIC Back',
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 18.h),
                                            child: text(
                                              context,
                                              'Child',
                                              16.sp,
                                              color: AppColors.blackshade2632,
                                              fontFamily: 'Poppins-Medium',
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                viewImageWidget(
                                                  'CNIC Front',
                                                ),
                                                viewImageWidget(
                                                  'CNIC Back',
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 18.h),
                                            child: text(
                                              context,
                                              'Child',
                                              16.sp,
                                              color: AppColors.blackshade2632,
                                              fontFamily: 'Poppins-Medium',
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                viewImageWidget(
                                                  'CNIC Front',
                                                ),
                                                viewImageWidget(
                                                  'CNIC Back',
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 25.h, left: 12.w, right: 12.w),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          viewdocumentWidget(
                                            'Car Registration.pdf',
                                            '1 page . 162kB',
                                          ),
                                          viewdocumentWidget(
                                            'Car Registration.pdf',
                                            '1 page . 162kB',
                                          ),
                                          viewdocumentWidget(
                                            'Car Registration.pdf',
                                            '1 page . 162kB',
                                          ),
                                          viewdocumentWidget(
                                            'Car Registration.pdf',
                                            '1 page . 162kB',
                                          ),
                                          viewdocumentWidget(
                                            'Car Registration.pdf',
                                            '1 page . 162kB',
                                          ),
                                          viewdocumentWidget(
                                            'Car Registration.pdf',
                                            '1 page . 162kB',
                                          ),
                                          viewdocumentWidget(
                                            'Car Registration.pdf',
                                            '1 page . 162kB',
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ]))
                      ])),
            ],
          ),
        ),
      ),
    );
  }

  Widget viewImageWidget(String textval) {
    return Column(
      children: [
        Container(
          height: 100.h,
          width: 140.w,
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
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 19.h, bottom: 19.h),
          child: const Image(image: AssetImage(AppImages.viewImageScreen)),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: text(
            context,
            textval,
            12.sp,
            color: AppColors.blackshade2632,
            fontFamily: 'Poppins-Medium',
          ),
        )
      ],
    );
  }

  Widget viewdocumentWidget(
    String textval,
    String textval2,
  ) {
    return Container(
      height: 55.h,
      width: 325.w,
      margin: EdgeInsets.only(top: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            color: AppColors.primaryColor.withOpacity(0.25),
            blurRadius: 5,
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15.w, left: 10.w),
            child: SizedBox(
              width: 28.w,
              height: 28.h,
              child: const Image(
                image: AssetImage(AppImages.viewPdfIcon),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              text(
                context,
                'Car Registration.pdf',
                12.sp,
                color: AppColors.blackshade2632,
                fontFamily: 'Poppins',
              ),
              text(
                context,
                '1 page . 162kB',
                10.sp,
                color: AppColors.textGrey7A,
                fontFamily: 'Poppins',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
