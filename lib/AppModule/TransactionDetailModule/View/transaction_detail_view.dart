import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test/Constant/appText.dart';
import 'package:test/Constant/size_config.dart';

class TransactionDetailView extends StatelessWidget {
  const TransactionDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 5,
            vertical: SizeConfig.heightMultiplier * 5),
        children: [
          appText(
              title: 'Date',
              textAlign: TextAlign.left,
              fontSize: SizeConfig.textMultiplier * 2.0),
          SizedBox(
            height: SizeConfig.heightMultiplier * 5.0,
          ),
          appText(
              title: 'Price',
              textAlign: TextAlign.left,
              fontSize: SizeConfig.textMultiplier * 2.0),
          SizedBox(
            height: SizeConfig.heightMultiplier * 5.0,
          ),
          appText(
              title: 'Type',
              textAlign: TextAlign.left,
              fontSize: SizeConfig.textMultiplier * 2.0),
          SizedBox(
            height: SizeConfig.heightMultiplier * 5.0,
          ),
          appText(
              title: 'Description',
              textAlign: TextAlign.left,
              fontSize: SizeConfig.textMultiplier * 1.8),
        ],
      )),
    );
  }
}
