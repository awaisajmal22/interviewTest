import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../Constant/appText.dart';

Widget detailTile({required String title, required String subtitle}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      appText(
          title: title,
          textAlign: TextAlign.left,
          fontSize: 20.sp,
          textColor: Colors.white),
      appText(
          title: subtitle,
          textAlign: TextAlign.left,
          fontSize: 20.sp,
          textColor: Colors.white),
    ],
  );
}
