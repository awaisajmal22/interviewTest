import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../Constant/appText.dart';

Widget transactionListTile({
  required VoidCallback voidCallback,
  required String date,
  required double price,
  required String transactionType
}) {
    return GestureDetector(
                    onTap: voidCallback,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          vertical: 2.h, horizontal: 2.h),
                      height: 10.h,
                      width:  100.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 5,
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 15,
                                offset: Offset(0, 10))
                          ]),
                      margin: EdgeInsets.symmetric(
                          horizontal: 3.h, vertical: 2.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              appText(
                                  title: date,
                                  fontSize: 15.sp,
                                  textAlign: TextAlign.left),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  appText(
                                      title: price.toString(),
                                      textAlign: TextAlign.left,
                                      fontSize: 12.sp),
                                  appText(
                                      title: transactionType,
                                      textAlign: TextAlign.start,
                                      fontSize: 12.sp)
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
  }