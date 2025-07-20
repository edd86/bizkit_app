import 'package:bizkit_app/core/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WidgetInventoryReport extends StatelessWidget {
  const WidgetInventoryReport({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 9.h,
      child: Card(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Valor de Inventario',
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.bold,
                fontSize: AppTheme.titleSize,
              ),
            ),
            Text(
              '285.200',
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.w300,
                fontSize: AppTheme.amountsSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
