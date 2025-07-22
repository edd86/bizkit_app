import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget planCard(
  int id,
  String name,
  String price,
  String desc, {
  required bool isSelected,
}) => Card(
  color: isSelected ? Colors.blue : Colors.transparent,
  child: SizedBox(
    height: 10.h,
    width: 25.w,
    child: Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 2.h, horizontal: 2.w),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 14.5.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 1.5.h),
          Text(price),
          SizedBox(height: 1.5.h),
          Text(desc),
        ],
      ),
    ),
  ),
);
