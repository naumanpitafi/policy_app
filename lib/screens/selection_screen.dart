import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:policyapp/controlers/notifications_Controlers.dart';
import 'package:policyapp/screens/health_policy_requirments/family_detail_screen.dart';
import 'package:policyapp/screens/health_policy_requirments/health_screen.dart';
import 'package:policyapp/screens/myUic/policy_verification_screen.dart';
import 'package:policyapp/screens/one_Link/onelink_tamem.dart';
import 'package:policyapp/screens/one_Link/onelink_united.dart';
import 'package:policyapp/screens/one_Link/qrCode_generator.dart';
import 'package:policyapp/screens/one_Link/scan_Qr_code_Screen.dart';
import 'package:policyapp/utils/app-Color.dart';
import 'package:policyapp/utils/app-Routes.dart';
import 'package:policyapp/utils/app-TextWidget.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: text(context, 'Policy App', 18.sp, color: AppColors.whiteColor),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    AppRoutes.push(context, PageTransitionType.fade,
                        const PolicyVerificationScreen());
                  },
                  child: const Text('Policy Verification ')),
              ElevatedButton(
                  onPressed: () {
                    AppRoutes.push(context, PageTransitionType.fade,
                        const ScanQRCodeScreen());
                  },
                  child: const Text('Scan Qr Code ')),
              ElevatedButton(
                  onPressed: () {
                    AppRoutes.push(context, PageTransitionType.fade,
                        const FamilyDetailsScreen());
                  },
                  child: const Text('Family Details ')),
              ElevatedButton(
                  onPressed: () {
                    AppRoutes.push(
                        context, PageTransitionType.fade, const HealthScreen());
                  },
                  child: const Text('Health Screeen ')),
              ElevatedButton(
                  onPressed: () {
                    AppRoutes.push(context, PageTransitionType.fade,
                        const OneLinkUnited());
                  },
                  child: const Text('OneLink United Screeen ')),
              ElevatedButton(
                  onPressed: () {
                    AppRoutes.push(
                        context, PageTransitionType.fade, const OneLinkTamem());
                  },
                  child: const Text('OneLink Tame Screeen ')),
              ElevatedButton(
                  onPressed: () {
                    AppRoutes.push(context, PageTransitionType.fade,
                        const QRCodeGenerator());
                  },
                  child: const Text(' Generate QR Code Screeen ')),
              ElevatedButton(
                  onPressed: () {
                    AppRoutes.push(context, PageTransitionType.fade,
                        const ScanQRCodeScreen());
                  },
                  child: const Text(' Scan QR Code Screeen ')),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    text(
                      context,
                      'Notification ',
                      22.sp,
                      color: AppColors.blackColor,
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      // heroTag: '1',
                      onPressed: () =>
                          NotificationController.createNewNotification(),
                      // tooltip: 'Create New notification',

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          text(
                            context,
                            'Create Simple notification',
                            18.sp,
                            color: AppColors.whiteColor,
                          ),
                          const Icon(Icons.notification_add),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () =>
                          NotificationController.scheduleNewNotification(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          text(
                            context,
                            'Create Schedules notification',
                            18.sp,
                            color: AppColors.whiteColor,
                          ),
                          const Icon(Icons.access_time_outlined)
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () =>
                          NotificationController.cancelNotifications(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          text(
                            context,
                            'Delete All notification',
                            18.sp,
                            color: AppColors.whiteColor,
                          ),
                          const Icon(Icons.delete_forever),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
