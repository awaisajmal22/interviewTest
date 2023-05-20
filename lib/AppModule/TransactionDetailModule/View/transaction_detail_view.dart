import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:test/Constant/appText.dart';

class TransactionDetailView extends StatelessWidget {
  const TransactionDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          
        children: [
          appText(title: 'Date', textAlign: TextAlign.left, fontSize:  14.sp),
          SizedBox(
            height: 5.h,
          ),
          appText(title: 'Price', textAlign: TextAlign.left, fontSize:  14.sp),
          SizedBox(
            height: 5.h,
          ),
          appText(title: 'Type', textAlign: TextAlign.left, fontSize:  14.sp),
          SizedBox(
            height: 5.h,
          ),
          appText(title: 'Description', textAlign: TextAlign.left, fontSize:  12.sp),
        ],
      )),
    );
  }
}