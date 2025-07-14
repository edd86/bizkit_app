class RoleModel {
  final int? id;
  final String name;
  final String description;

  RoleModel({this.id, required this.name, required this.description});

  factory RoleModel.formJson(Map<String, dynamic> json) {
    return (RoleModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    ));
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'description': description};
  }

  RoleModel copyWith({int? id, String? name, String? description}) {
    return RoleModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }
}
