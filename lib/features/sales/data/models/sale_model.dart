class SaleModel {
  final int? id;
  final double total;
  final String paymenteToken;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String syncStatus;
  final int remoteId;
  final int userId;
  final int employeeId;
  final int branchId;
  final int paymentMethodId;

  SaleModel({
    this.id,
    required this.total,
    required this.paymenteToken,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    required this.remoteId,
    required this.userId,
    required this.employeeId,
    required this.branchId,
    required this.paymentMethodId,
  });

  factory SaleModel.fromJson(Map<String, dynamic> json) {
    return SaleModel(
      id: json['id'],
      total: json['total'],
      paymenteToken: json['paymenteToken'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      syncStatus: json['syncStatus'],
      remoteId: json['remoteId'],
      userId: json['userId'],
      employeeId: json['employeeId'],
      branchId: json['branchId'],
      paymentMethodId: json['paymentMethodId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'total': total,
      'paymenteToken': paymenteToken,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'syncStatus': syncStatus,
      'remoteId': remoteId,
      'userId': userId,
      'employeeId': employeeId,
      'branchId': branchId,
      'paymentMethodId': paymentMethodId,
    };
  }

  SaleModel copyWith({
    int? id,
    double? total,
    String? paymenteToken,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? syncStatus,
    int? remoteId,
    int? userId,
    int? employeeId,
    int? branchId,
    int? paymentMethodId,
  }) {
    return SaleModel(
      id: id ?? this.id,
      total: total ?? this.total,
      paymenteToken: paymenteToken ?? this.paymenteToken,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      syncStatus: syncStatus ?? this.syncStatus,
      remoteId: remoteId ?? this.remoteId,
      userId: userId ?? this.userId,
      employeeId: employeeId ?? this.employeeId,
      branchId: branchId ?? this.branchId,
      paymentMethodId: paymentMethodId ?? this.paymentMethodId,
    );
  }
}
