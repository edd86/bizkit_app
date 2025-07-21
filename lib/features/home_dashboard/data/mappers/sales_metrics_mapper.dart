import 'package:bizkit_app/features/home_dashboard/data/models/sales_metrics_model.dart';
import 'package:bizkit_app/features/home_dashboard/domain/entitites/sales_metrics.dart';

class SalesMetricsMapper {
  static SalesMetrics toEntity(SalesMetricsModel model) {
    return SalesMetrics(
      totalDayliSales: model.totalDayliSales,
      totalWeeklySales: model.totalWeeklySales,
      totalMonthlySales: model.totalMonthlySales,
      inventoryValue: model.inventoryValue,
    );
  }
}
