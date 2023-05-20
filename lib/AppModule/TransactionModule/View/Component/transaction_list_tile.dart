import 'package:flutter/material.dart';
import 'package:test/Constant/size_config.dart';

import '../../../../Constant/appText.dart';

Widget transactionListTile(
    {required VoidCallback voidCallback,
    required String date,
    required double price,
    required String transactionType}) {
  return GestureDetector(
    onTap: voidCallback,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          vertical: SizeConfig.heightMultiplier * 2.0,
          horizontal: SizeConfig.widthMultiplier * 2.0),
      // height: SizeConfig.heightMultiplier * 10,
      width: SizeConfig.widthMultiplier * 100,
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
          horizontal: SizeConfig.widthMultiplier * 3.0,
          vertical: SizeConfig.heightMultiplier * 2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText(
                  title: date,
                  fontSize: SizeConfig.textMultiplier * 2.0,
                  textAlign: TextAlign.left),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appText(
                      title: price.toString(),
                      textAlign: TextAlign.left,
                      fontSize: SizeConfig.textMultiplier * 1.8),
                  appText(
                      title: transactionType,
                      textAlign: TextAlign.start,
                      fontSize: SizeConfig.textMultiplier * 1.8)
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
