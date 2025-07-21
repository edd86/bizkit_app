class InventoryAlert {
  final int productId;
  final String productName;
  final String description;
  final AlertType alertType;

  InventoryAlert({
    required this.productId,
    required this.productName,
    required this.description,
    required this.alertType,
  });
}

enum AlertType { lowStock, expiration, inactive }
