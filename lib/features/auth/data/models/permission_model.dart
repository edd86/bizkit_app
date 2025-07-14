class PermissionModel {
  final int? id;
  final String name;
  final String description;

  PermissionModel({this.id, required this.name, required this.description});

  factory PermissionModel.formJson(Map<String, dynamic> json) {
    return PermissionModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'description': description};
  }

  PermissionModel copyWith({int? id, String? name, String? description}) {
    return PermissionModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }
}
