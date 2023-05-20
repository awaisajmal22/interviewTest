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
      body: SafeArea(
        child: Column(
          children: [
            searchFormField(
                controller: transactionVM.searchController,
                searchCallback: () {},
                hintText: 'Search Here'),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return transactionListTile(
                        date: '10',
                        price: 20.0,
                        transactionType: 'Pyramid',
                        voidCallback: () {
                          Get.toNamed(AppRoutes.transactionDetailView);
                        });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
