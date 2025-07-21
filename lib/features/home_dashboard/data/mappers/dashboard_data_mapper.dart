import 'package:bizkit_app/features/home_dashboard/data/mappers/inventory_alert_mapper.dart';
import 'package:bizkit_app/features/home_dashboard/data/mappers/product_dashboard_mapper.dart';
import 'package:bizkit_app/features/home_dashboard/data/models/dashboard_data_model.dart';
import 'package:bizkit_app/features/home_dashboard/domain/entitites/dashboard_data.dart';

class DashboardDataMapper {
  static DashboardData toEntity(DashboardDataModel model) {
    return DashboardData(
      salesMetrics: model.salesMetrics,
      inventoryValue: model.inventoryValue,
      products: model.products
          .map((model) => ProductDashboardMapper.toEntity(model))
          .toList(),
      alerts: model.alerts
          .map((model) => InventoryAlertMapper.toEntity(model))
          .toList(),
    );
  }
}
