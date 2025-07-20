class PaymentMethods {
  final int? id;
  final String name;
  final String description;

  PaymentMethods({this.id, required this.name, required this.description});

  factory PaymentMethods.fromJson(Map<String, dynamic> json) {
    return PaymentMethods(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'description': description};
  }

  PaymentMethods copyWith({int? id, String? name, String? description}) {
    return PaymentMethods(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }
}
