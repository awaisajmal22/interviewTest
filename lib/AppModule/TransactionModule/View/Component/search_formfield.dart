import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget searchFormField(
    {required TextEditingController controller,
    required Function(String?)? searchCallback,
    required VoidCallback clearCallback,
    required String hintText}) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
    child: TextFormField(
      onFieldSubmitted: searchCallback as String? Function(String),
      controller: controller,
      cursorColor: Colors.black,
      style: TextStyle(
          color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 13.sp),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
          suffixIcon: GestureDetector(
            onTap: clearCallback,
            child: const Icon(
              Icons.close_outlined,
              color: Colors.grey,
              size: 20,
            ),
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 20,
          ),
          hintStyle: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 14.sp),
          hintText: hintText,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none)),
    ),
  );
}
