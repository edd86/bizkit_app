import 'package:bizkit_app/presentation/pages/employer/employer_page.dart';
import 'package:bizkit_app/features/home_dashboard/presentarion/dashboard_page.dart';
import 'package:bizkit_app/presentation/pages/inventory/inventory_page.dart';
import 'package:bizkit_app/presentation/pages/sales/sales_page.dart';
import 'package:flutter/material.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({super.key});

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedIndex: currentIndex,
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.monetization_on),
            icon: Icon(Icons.monetization_on_outlined),
            label: 'Ventas',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.inventory),
            icon: Icon(Icons.inventory_2_outlined),
            label: 'Inventario',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person_4),
            icon: Icon(Icons.person_4_outlined),
            label: 'Personal',
          ),
        ],
      ),
      body: <Widget>[
        DashboardPage(),
        SalesPage(),
        InventoryPage(),
        EmployerPage(),
      ][currentIndex],
    );
  }
}
