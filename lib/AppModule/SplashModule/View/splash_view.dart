import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test/Constant/appText.dart';
import 'package:test/RoutesAndBindings/app_routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 4), () => Get.toNamed(AppRoutes.transactionView));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: appText(
            title: 'Transaction History',
            fontSize: 24.sp,
            textColor: Colors.white),
      ),
    );
  }
}
