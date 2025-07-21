class InventoryAlertModel {
  final int productId;
  final String productName;
  final String description;
  final AlertTypeModel alertType;

  const InventoryAlertModel({
    required this.productId,
    required this.productName,
    required this.description,
    required this.alertType,
  });

  factory InventoryAlertModel.fromJson(Map<String, dynamic> json) {
    return InventoryAlertModel(
      productId: json['product_id'],
      productName: json['product_name'],
      description: json['description'],
      alertType: AlertTypeModel.values.firstWhere(
        (e) => e.toString().split('.').last == json['alert_type'],
      ),
    );
  }
}

enum AlertTypeModel { lowStock, expiration, inactive }
