import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/AppModule/TransactionModule/Services/transaction_services.dart';

import '../Model/transaction_model.dart';

class TransactionViewModel extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    getData();
    super.onInit();
  }

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();
  RxList<TransactionDataModel> dataModel = <TransactionDataModel>[].obs;
  TextEditingController searchController = TextEditingController();
  RxList SearchTransaction = [].obs;
  void getData() async {
    var data = await TransactionServices().getDataModel();
    dataModel.value = data;
  }

  void searchData(String query) {
    if (query.isEmpty) {
      getData();
    } else {
      final suggestions = dataModel.where((data) {
        final transaction = data.type.toString().split('.').last;
        final input = query.toUpperCase();
        return transaction.contains(input);
      }).toList();
      dataModel.value = suggestions;
    }
  }
}
