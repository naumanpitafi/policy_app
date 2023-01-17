import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:policyapp/utils/app-Images.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../utils/app-Color.dart';
import '../../utils/app-Routes.dart';
import '../../utils/app-TextWidget.dart';

class QRCodeGenerator extends StatefulWidget {
  const QRCodeGenerator({Key? key}) : super(key: key);

  @override
  State<QRCodeGenerator> createState() => _QRCodeGeneratorState();
}

class _QRCodeGeneratorState extends State<QRCodeGenerator> {
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
          'QR CODE GENERATOR',
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
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: QrImage(
                size: 320,
                data: 'This is test QR CODE ... ',
                gapless: true,
                version: QrVersions.auto,
                padding: EdgeInsets.all(10),
                semanticsLabel: 'qr code',
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
