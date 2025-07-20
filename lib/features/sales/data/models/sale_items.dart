class SaleItems {
  final int? id;
  final int quantity;
  final double price;
  final int saleId;
  final int productId;

  SaleItems({
    this.id,
    required this.quantity,
    required this.price,
    required this.saleId,
    required this.productId,
  });

  factory SaleItems.fromJson(Map<String, dynamic> json) {
    return SaleItems(
      id: json['id'],
      quantity: json['quantity'],
      price: json['price'],
      saleId: json['saleId'],
      productId: json['productId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'quantity': quantity,
      'price': price,
      'saleId': saleId,
      'productId': productId,
    };
  }

  SaleItems copyWith({
    int? id,
    int? quantity,
    double? price,
    int? saleId,
    int? productId,
  }) {
    return SaleItems(
      id: id ?? this.id,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      saleId: saleId ?? this.saleId,
      productId: productId ?? this.productId,
    );
  }
}
