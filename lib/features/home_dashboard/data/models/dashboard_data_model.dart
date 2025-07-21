import 'package:bizkit_app/features/home_dashboard/data/models/inventory_alert_model.dart';
import 'package:bizkit_app/features/home_dashboard/data/models/product_dashboard_model.dart';
import 'package:bizkit_app/features/home_dashboard/domain/entitites/sales_metrics.dart';

class DashboardDataModel {
  final SalesMetrics salesMetrics;
  final double inventoryValue;
  final List<ProductDashboardModel> products;
  final List<InventoryAlertModel> alerts;

  DashboardDataModel({
    required this.salesMetrics,
    required this.inventoryValue,
    required this.products,
    required this.alerts,
  });
}
