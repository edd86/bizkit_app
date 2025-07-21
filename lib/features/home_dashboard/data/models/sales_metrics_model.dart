class SalesMetricsModel {
  final double totalDayliSales;
  final double totalWeeklySales;
  final double totalMonthlySales;
  final double inventoryValue;

  SalesMetricsModel({
    required this.totalDayliSales,
    required this.totalWeeklySales,
    required this.totalMonthlySales,
    required this.inventoryValue,
  });

  factory SalesMetricsModel.fromJson(Map<String, dynamic> json) {
    return SalesMetricsModel(
      totalDayliSales: json['totalDayliSales']?.toDouble() ?? 0.0,
      totalWeeklySales: json['totalWeeklySales']?.toDouble() ?? 0.0,
      totalMonthlySales: json['totalMonthlySales']?.toDouble() ?? 0.0,
      inventoryValue: json['inventoryValue']?.toDouble() ?? 0.0,
    );
  }
}
