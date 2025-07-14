class UserRoleModel {
  final int? id;
  final int userId;
  final int roleId;

  UserRoleModel({this.id, required this.userId, required this.roleId});

  factory UserRoleModel.formJson(Map<String, dynamic> json) {
    return UserRoleModel(
      id: json['id'],
      userId: json['userId'],
      roleId: json['roleId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'userId': userId, 'roleId': roleId};
  }

  UserRoleModel copyWith({int? id, int? userId, int? roleId}) {
    return UserRoleModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      roleId: roleId ?? this.roleId,
    );
  }
}
