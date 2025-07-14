class RolePermissionModel {
  final int? id;
  final int roleId;
  final int permissionId;

  RolePermissionModel({
    this.id,
    required this.roleId,
    required this.permissionId,
  });

  factory RolePermissionModel.formJson(Map<String, dynamic> json) {
    return RolePermissionModel(
      id: json['id'],
      roleId: json['roleId'],
      permissionId: json['permissionId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'roleId': roleId, 'permissionId': permissionId};
  }

  RolePermissionModel copyWith({int? id, int? roleId, int? permissionId}) {
    return RolePermissionModel(
      id: id ?? this.id,
      roleId: roleId ?? this.roleId,
      permissionId: permissionId ?? this.permissionId,
    );
  }
}
