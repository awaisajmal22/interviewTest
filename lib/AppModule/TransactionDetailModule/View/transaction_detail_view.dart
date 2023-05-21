import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:test/AppModule/TransactionDetailModule/View/Component/transaction_detail_tile.dart';
import 'package:test/Constant/appText.dart';
import 'package:test/Constant/seperator.dart';

class TransactionDetailView extends StatelessWidget {
  TransactionDetailView({super.key});
  var date = Get.arguments[0];
  var ammount = Get.arguments[1];
  var curenccy = Get.arguments[2];
  var type = Get.arguments[3];
  var description = Get.arguments[4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 2.h,
          vertical: 2.h,
        ),
        children: [
          appText(
              title: 'Transaction Detail',
              fontSize: 24.sp,
              textColor: Colors.white),
          SizedBox(
            height: 3.h,
          ),
          detailTile(
              title: 'Date', subtitle: DateFormat('dd-MM-yyyy').format(date)),
          SizedBox(
            height: 2.h,
          ),
          const MySeparator(),
          SizedBox(
            height: 2.h,
          ),
          detailTile(title: 'Price', subtitle: "${ammount} ${curenccy}"),
          SizedBox(
            height: 2.h,
          ),
          const MySeparator(),
          SizedBox(
            height: 2.h,
          ),
          detailTile(title: 'Type', subtitle: type.toString().split('.').last),
          SizedBox(
            height: 2.h,
          ),
          const MySeparator(),
          SizedBox(
            height: 2.h,
          ),
          appText(
              title: 'Description',
              textAlign: TextAlign.left,
              fontSize: 20.sp,
              textColor: Colors.white),
          SizedBox(
            height: 0.5.h,
          ),
          appText(
              title: description,
              textAlign: TextAlign.left,
              fontSize: 15.sp,
              textColor: Colors.white),
        ],
      )),
    );
  }
}
