import 'package:bizkit_app/features/home_dashboard/domain/entitites/inventory_alert.dart';
import 'package:bizkit_app/features/home_dashboard/domain/entitites/product_dashboard.dart';
import 'package:bizkit_app/features/home_dashboard/domain/entitites/sales_metrics.dart';

class DashboardData {
  final SalesMetrics salesMetrics;
  final double inventoryValue;
  final List<ProductDashboard> products;
  final List<InventoryAlert> alerts;

  DashboardData({
    required this.salesMetrics,
    required this.inventoryValue,
    required this.products,
    required this.alerts,
  });
}
