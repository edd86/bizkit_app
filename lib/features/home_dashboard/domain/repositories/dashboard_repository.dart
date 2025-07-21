import 'package:bizkit_app/features/home_dashboard/domain/entitites/inventory_alert.dart';
import 'package:bizkit_app/features/home_dashboard/domain/entitites/product_dashboard.dart';
import 'package:bizkit_app/features/home_dashboard/domain/entitites/sales_metrics.dart';

abstract class DashboardRepository {
  Future<SalesMetrics> getSalesMetrics();
  Future<double> getInventoryValue();
  Future<List<ProductDashboard>> getProductDashboard();
  Future<List<InventoryAlert>> getInventoryAlert();
}
