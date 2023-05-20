import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test/AppModule/TransactionModule/View/transaction_view.dart';
import 'package:test/RoutesAndBindings/app_pages.dart';
import 'package:test/RoutesAndBindings/app_routes.dart';

void main() {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: 'Flutter Demo',
        getPages: AppPages.routes,
        initialRoute: AppRoutes.transactionView,
      );
    });
  }
}
