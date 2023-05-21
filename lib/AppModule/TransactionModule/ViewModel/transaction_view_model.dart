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
  void getData() async {
    var data = await TransactionServices().getDataModel();
    dataModel.value = data;
    final sortedData = dataModel.map((sort) => sort).toList()
      ..sort(
        (a, b) => DateTime.parse(a.date!.toIso8601String())
            .compareTo(DateTime.parse(b.date!.toIso8601String())),
      );
    dataModel.value = sortedData;
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
