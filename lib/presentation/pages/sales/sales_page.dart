import 'package:bizkit_app/core/constants/app_routes.dart';
import 'package:bizkit_app/data/data_json.dart';
import 'package:bizkit_app/presentation/pages/widgets/custom_listtile.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({super.key});

  @override
  State<SalesPage> createState() => _SalesPageState();
}

final TextEditingController _findProduct = TextEditingController();

class _SalesPageState extends State<SalesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 3.5.h, horizontal: 5.2.w),
        child: Column(
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Badge(
          label: Text('3'),
          child: Icon(Icons.shopping_cart_rounded),
        ),
        onPressed: () => Navigator.pushNamed(context, AppRoutes.registerSale),
      ),
    );
  }
}
