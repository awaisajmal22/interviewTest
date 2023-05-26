import 'dart:async';

import 'package:get/get.dart';
import 'package:test/RoutesAndBindings/app_routes.dart';

class SplashViewModel extends GetxController {
  Timer? timer;

  @override
  void onInit() {
    // TODO: implement onInit
    timer = Timer(const Duration(seconds: 4), () {
      Get.offAllNamed(AppRoutes.transactionView);
     });
    super.onInit();
  }
}
