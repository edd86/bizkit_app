import 'package:bizkit_app/data/data_json.dart';
import 'package:bizkit_app/pages/widgets/custom_employer_tile.dart';
import 'package:flutter/material.dart';

class EmployerPage extends StatefulWidget {
  const EmployerPage({super.key});

  @override
  State<EmployerPage> createState() => _EmployerPageState();
}

class _EmployerPageState extends State<EmployerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: ListView.builder(
        itemCount: dataEmployerJson.length,
        itemBuilder: (context, index) {
          final employer = dataEmployerJson[index];
          return CustomEmployerTile(
            name: employer['name']!,
            rol: employer['role']!,
            address: employer['address']!,
            phone: employer['phone']!,
            img: employer['img']!,
          );
        },
      ),
    );
  }
}
