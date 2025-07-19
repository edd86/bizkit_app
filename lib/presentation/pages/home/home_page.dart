import 'package:bizkit_app/core/constants/app_theme.dart';
import 'package:bizkit_app/data/data_json.dart';
import 'package:bizkit_app/presentation/pages/home/widgets/widget_sell_report.dart';
import 'package:bizkit_app/presentation/pages/home/widgets/widget_inventory_report.dart';
import 'package:bizkit_app/presentation/pages/widgets/custom_listtile.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Principal'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 3.w, vertical: 0.5.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              WidgetSellReport(),
              SizedBox(height: 1.h),
              WidgetInventoryReport(),
              SizedBox(height: 1.h),
              Text(
                'Productos más vendidos',
                style: TextStyle(
                  fontSize: AppTheme.titleSize,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 1.h),
              SizedBox(
                height: 22.h,
                child: ListView.builder(
                  itemCount: dataJson.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = dataJson[index];
                    return CustomListtile(
                      title: item['title'] ?? '',
                      subtitle: item['subtitle'] ?? '',
                      imgRoute: item['imgRoute'] ?? '',
                    );
                  },
                ),
              ),
              Text(
                'Alertas de inventario',
                style: TextStyle(
                  fontSize: AppTheme.titleSize,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 22.h,
                child: ListView.builder(
                  itemCount: dataJson.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = dataJson[index];
                    return CustomListtile(
                      title: item['title'] ?? '',
                      subtitle: item['subtitle'] ?? '',
                      imgRoute: item['imgRoute'] ?? '',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
