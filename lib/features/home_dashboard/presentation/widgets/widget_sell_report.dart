import 'package:bizkit_app/core/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WidgetSellReport extends StatelessWidget {
  const WidgetSellReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 45.5.w,
              height: 9.h,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Ventas de hoy',
                        style: TextStyle(
                          fontSize: AppTheme.titleSize,
                          fontWeight: FontWeight.w800,
                        ),
                      ),

                      ///TODO: Actualizar los estados
                      Text(
                        '35.000',
                        style: TextStyle(
                          fontSize: AppTheme.amountsSize,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 45.5.w,
              height: 9.h,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Ventas de esta semana',
                        style: TextStyle(
                          fontSize: AppTheme.titleSize,
                          fontWeight: FontWeight.w800,
                        ),
                      ),

                      ///TODO: Actualizar los estados
                      Text(
                        '135.000',
                        style: TextStyle(
                          fontSize: AppTheme.amountsSize,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 2.h),
        SizedBox(
          width: double.infinity,
          height: 9.h,
          child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Ventas del mes',
                    style: TextStyle(
                      fontSize: AppTheme.titleSize,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  ///TODO: Actualizar los estados
                  Text(
                    '535.000',
                    style: TextStyle(
                      fontSize: AppTheme.amountsSize,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
