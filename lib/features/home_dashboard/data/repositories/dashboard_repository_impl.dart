import 'package:bizkit_app/features/home_dashboard/domain/entitites/inventory_alert.dart';
import 'package:bizkit_app/features/home_dashboard/domain/entitites/product_dashboard.dart';
import 'package:bizkit_app/features/home_dashboard/domain/entitites/sales_metrics.dart';
import 'package:bizkit_app/features/home_dashboard/domain/repositories/dashboard_repository.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  @override
  Future<List<InventoryAlert>> getInventoryAlert() {
    // TODO: implement getInventoryAlert
    throw UnimplementedError();
  }

  @override
  Future<double> getInventoryValue() {
    // TODO: implement getInventoryValue
    throw UnimplementedError();
  }

  @override
  Future<List<ProductDashboard>> getProductDashboard() {
    // TODO: implement getProductDashboard
    throw UnimplementedError();
  }

  @override
  Future<SalesMetrics> getSalesMetrics() {
    // TODO: implement getSalesMetrics
    throw UnimplementedError();
  }
}
