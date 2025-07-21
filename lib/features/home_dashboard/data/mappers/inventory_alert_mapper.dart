import 'package:bizkit_app/features/home_dashboard/data/models/inventory_alert_model.dart';
import 'package:bizkit_app/features/home_dashboard/domain/entitites/inventory_alert.dart';

class InventoryAlertMapper {
  static InventoryAlert toEntity(InventoryAlertModel model) {
    return InventoryAlert(
      productId: model.productId,
      productName: model.productName,
      description: model.description,
      alertType: AlertType.values[model.alertType.index],
    );
  }

  static List<InventoryAlert> toEntityList(List<InventoryAlertModel> models) {
    List<InventoryAlert> entities = [];
    for (var model in models) {
      entities.add(toEntity(model));
    }
    return entities;
  }
}
