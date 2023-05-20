import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget searchFormField(
    {required TextEditingController controller,
    required VoidCallback searchCallback,
    required String hintText}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 2.h),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 15,
              offset: const Offset(0, 8),
              color: const Color(0xff00001A).withOpacity(0.1))
        ]),
    child: TextFormField(
      controller: controller,
      cursorColor: Colors.grey,
      style: TextStyle(
          fontSize: 15.sp, color: Colors.black, fontWeight: FontWeight.w400),
      textAlign: TextAlign.left,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 15.sp,
              color: Colors.black,
              fontWeight: FontWeight.w400),
          prefixIcon: GestureDetector(
            onTap: searchCallback,
            child: Icon(Icons.search),
          ),

          // ),

          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10))),
    ),
  );
}
