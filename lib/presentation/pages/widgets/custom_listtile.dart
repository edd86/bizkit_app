import 'package:bizkit_app/core/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomListtile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgRoute;
  const CustomListtile({
    required this.title,
    required this.subtitle,
    required this.imgRoute,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 6.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(imgRoute, width: 10.w, fit: BoxFit.fitWidth),
          Padding(
            padding: EdgeInsetsGeometry.only(left: 2.w),
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: AppTheme.titleSize)),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: AppTheme.amountsSize),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
