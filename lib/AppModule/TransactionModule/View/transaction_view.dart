import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test/AppModule/TransactionModule/View/Component/search_formfield.dart';
import 'package:test/AppModule/TransactionModule/ViewModel/transaction_view_model.dart';
import 'package:test/Constant/appText.dart';
import 'package:test/RoutesAndBindings/app_routes.dart';

import 'Component/transaction_list_tile.dart';

class TransactionView extends StatelessWidget {
  TransactionView({super.key});
  final transactionVM = Get.find<TransactionViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            searchFormField(
                clearCallback: () {
                  transactionVM.searchController.clear();
                  transactionVM.getData();
                },
                controller: transactionVM.searchController,
                searchCallback: (value) {
                  transactionVM.searchData(value!);
                },
                hintText: 'Search using Transaction Type'),
            Expanded(
              child:  Obx(
                      ()=> transactionVM.dataModel.value.isEmpty 
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ) : ListView.builder(
                          shrinkWrap: true,
                          itemCount: transactionVM.dataModel.value.length,
                          itemBuilder: (context, index) {
                            var val = transactionVM.dataModel.value[index];
                            var date = val.date;
                            return transactionListTile(
                                context: context,
                                date: DateFormat('dd-MM-yyyy').format(date!),
                                price: "${val.amount} ${val.currency}",
                                transactionType:
                                    val.type.toString().split('.').last,
                                voidCallback: () {
                                  Get.toNamed(AppRoutes.transactionDetailView,
                                      arguments: [
                                        val.date,
                                        val.amount,
                                        val.currency,
                                        val.type,
                                        val.description
                                      ]);
                                });
                          }),
                    )
                  
            ),
          ],
        ),
      ),
    );
  }
}
