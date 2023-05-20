import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:test/Constant/appText.dart';

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
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 2.h),
        children: [
          appText(title: 'Date', textAlign: TextAlign.left, fontSize: 20.sp),
          SizedBox(
            height: 2.h,
          ),
          appText(
              title: DateFormat('dd-MM-yyyy').format(date),
              textAlign: TextAlign.left,
              fontSize: 20.sp),
          SizedBox(
            height: 4.h,
          ),
          appText(title: 'Price', textAlign: TextAlign.left, fontSize: 20.sp),
          SizedBox(
            height: 2.h,
          ),
          appText(
              title: "${ammount} ${curenccy}",
              textAlign: TextAlign.left,
              fontSize: 20.sp),
          SizedBox(
            height: 4.h,
          ),
          appText(title: 'Type', textAlign: TextAlign.left, fontSize: 20.sp),
          SizedBox(
            height: 2.h,
          ),
          appText(
              title: type.toString().split('.').last,
              textAlign: TextAlign.left,
              fontSize: 20.sp),
          SizedBox(
            height: 4.h,
          ),
          appText(
              title: 'Description', textAlign: TextAlign.left, fontSize: 20.sp),
          SizedBox(
            height: 2.h,
          ),
          appText(
              title: description, textAlign: TextAlign.left, fontSize: 20.sp),
        ],
      )),
    );
  }
}
