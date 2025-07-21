import 'package:bizkit_app/features/home_dashboard/data/models/product_dashboard_model.dart';
import 'package:bizkit_app/features/home_dashboard/domain/entitites/product_dashboard.dart';

class ProductDashboardMapper {
  static ProductDashboard toEntity(ProductDashboardModel model) {
    return ProductDashboard(
      id: model.id,
      name: model.name,
      description: model.description,
      price: model.price,
    );
  }

  static List<ProductDashboard> toEntityList(
    List<ProductDashboardModel> models,
  ) {
    List<ProductDashboard> entities = [];
    for (var model in models) {
      entities.add(toEntity(model));
    }
    return entities;
  }
}
