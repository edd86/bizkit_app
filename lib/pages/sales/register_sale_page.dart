import 'package:bizkit_app/data/data_json.dart';
import 'package:bizkit_app/pages/widgets/custom_sale_tile.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RegisterSalePage extends StatefulWidget {
  const RegisterSalePage({super.key});

  @override
  State<RegisterSalePage> createState() => _RegisterSalePageState();
}

class _RegisterSalePageState extends State<RegisterSalePage> {
  final TextEditingController _discount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(3.w, 2.h, 3.w, 10.h),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: dataJson.length,
                itemBuilder: (context, index) {
                  final item = dataJson[index];
                  return CustomSaleTile(
                    title: item['title']!,
                    quantity: item['quantity']!,
                    imgRoute: item['imgRoute']!,
                    amount: item['amount']!,
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Subtotal: 730.29'),
                    SizedBox(height: 0.25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 50.w,
                          child: TextField(
                            controller: _discount,
                            decoration: InputDecoration(
                              label: Text('Descuento'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 50.w,
                          child: TextField(
                            controller: _discount,
                            decoration: InputDecoration(
                              label: Text('Importe Pagado'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.25.h),
                    Text('Cambio: 70bs'),
                    SizedBox(height: 0.25.h),
                    Text('Total: 730.29'),
                    SizedBox(height: 3.25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          label: Text('Efectivo'),
                          icon: Icon(Icons.money),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          label: Text('QR'),
                          icon: Icon(Icons.qr_code),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
