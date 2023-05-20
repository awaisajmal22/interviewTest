import 'package:get/get.dart';
import 'package:test/AppModule/SplashModule/View/splash_view.dart';

import 'package:test/AppModule/TransactionDetailModule/View/transaction_detail_view.dart';
import 'package:test/AppModule/TransactionModule/View/transaction_view.dart';
import 'package:test/AppModule/TransactionModule/ViewModel/transaction_view_model.dart';
import 'package:test/RoutesAndBindings/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: AppRoutes.splashView,
        page: () => SplashView(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => TransactionViewModel());
        })),
    GetPage(
        name: AppRoutes.transactionView,
        page: () => TransactionView(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => TransactionViewModel());
        })),
        GetPage(
        name: AppRoutes.transactionDetailView,
        page: () => TransactionDetailView(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => TransactionViewModel());
        }))
  ];
}
