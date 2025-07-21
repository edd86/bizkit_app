class ProductDashboardModel {
  final int id;
  final String name;
  final String description;
  final double price;

  ProductDashboardModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
  });

  factory ProductDashboardModel.fromJson(Map<String, dynamic> json) {
    return ProductDashboardModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
    );
  }
}
