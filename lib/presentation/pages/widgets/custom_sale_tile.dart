import 'package:bizkit_app/core/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomSaleTile extends StatelessWidget {
  final String title;
  final String quantity;
  final String imgRoute;
  final String amount;
  const CustomSaleTile({
    required this.title,
    required this.quantity,
    required this.imgRoute,
    required this.amount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(imgRoute, width: 15.w),
          SizedBox(
            width: 43.w,
            child: Text(title, style: TextStyle(fontSize: AppTheme.titleSize)),
          ),
          SizedBox(
            width: 15.w,
            child: Text(
              'Cant: $quantity',
              style: TextStyle(fontSize: AppTheme.amountsSize),
            ),
          ),
          SizedBox(
            width: 20.w,
            child: Text(
              '$amount bs.',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: AppTheme.amountsSize),
            ),
          ),
        ],
      ),
    );
  }
}
