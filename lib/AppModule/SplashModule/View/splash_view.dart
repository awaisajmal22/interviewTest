import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../Constant/appText.dart';
import '../ViewModel/splash_view_model.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});
  final splashVM = Get.find<SplashViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: appText(
              title: 'Transaction History',
              fontSize: 24.sp,
              textColor: Colors.white),
        ),
      ),
    );;
  }
}
