import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final double _spaceBetween = 2.2.h;
  final TextEditingController _tfName = TextEditingController();
  final TextEditingController _tfDescription = TextEditingController();
  final TextEditingController _tfPrice = TextEditingController();
  final TextEditingController _tfSku = TextEditingController();
  final TextEditingController _tfStock = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro de Producto'), centerTitle: true),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 2.w, vertical: 0.5.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: _tfName,
                decoration: InputDecoration(label: Text('Nombre')),
              ),
              SizedBox(height: _spaceBetween),
              TextField(
                controller: _tfDescription,
                decoration: InputDecoration(label: Text('Descripción')),
              ),
              SizedBox(height: _spaceBetween),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 50.w,
                    child: TextField(
                      controller: _tfPrice,
                      decoration: InputDecoration(label: Text('Precio')),
                    ),
                  ),
                  ElevatedButton(
                    child: Text('Determinar Precio'),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: _spaceBetween),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 50.w,
                    child: TextField(
                      controller: _tfSku,
                      decoration: InputDecoration(label: Text('Código')),
                    ),
                  ),
                  ElevatedButton(
                    child: Text('Generar código'),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: _spaceBetween),
              TextField(
                controller: _tfStock,
                decoration: InputDecoration(label: Text('Stock')),
              ),
              SizedBox(height: _spaceBetween * 1.5),
              ElevatedButton(
                child: Text('Registrar Producto'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* name: text
  description: text
  price: real
  sku: text
  stock: integer */
