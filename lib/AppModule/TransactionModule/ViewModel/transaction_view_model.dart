import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test/AppModule/TransactionModule/Services/transaction_services.dart';

import '../Model/transaction_model.dart';

class TransactionViewModel extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getData();
  }

  var dataModel = TransactionDataModel().obs;
  TextEditingController searchController = TextEditingController();

  void getData() async {
    var data = await TransactionServices().getDataModel();
    dataModel.value = data;
    print(dataModel.value.amount);
  }
}
