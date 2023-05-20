
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:test/AppModule/TransactionModule/View/transaction_view.dart';
import 'package:test/RoutesAndBindings/app_pages.dart';
import 'package:test/RoutesAndBindings/app_routes.dart';

import 'Constant/size_config.dart';

void main() {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return  GetMaterialApp(
          theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
          
        ),
        ),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          builder: (context, child) {
          return ScrollConfiguration(
            behavior: MyBehavior(),
            child: child!,
          );
        },
         getPages: AppPages.routes,
       initialRoute: AppRoutes.transactionView,
        );
      });
    });

  }


}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
