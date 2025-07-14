import 'package:bizkit_app/core/constants/app_routes.dart';
import 'package:bizkit_app/data/data_json.dart';
import 'package:bizkit_app/pages/widgets/custom_listtile.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({super.key});

  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  final TextEditingController _findProduct = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventario'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, AppRoutes.productPage),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.5.w, vertical: 0.5.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: _findProduct,
              decoration: InputDecoration(
                label: Text('Buscar producto'),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dataJson.length,
                itemBuilder: (context, index) {
                  final item = dataJson[index];
                  return CustomListtile(
                    title: item['title']!,
                    subtitle: item['subtitle']!,
                    imgRoute: item['imgRoute']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
