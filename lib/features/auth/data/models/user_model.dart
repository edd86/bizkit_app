class UserModel {
  final int? id;
  final String email;
  final String name;
  final String photoUrl;
  final String plan;
  final bool isActive;
  final DateTime createdAt;
  final String fingerPrint;
  final String googleId;

  UserModel({
    this.id,
    required this.email,
    required this.name,
    required this.photoUrl,
    required this.plan,
    required this.isActive,
    required this.createdAt,
    required this.fingerPrint,
    required this.googleId,
  });

  factory UserModel.formJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      photoUrl: json['photoUrl'],
      plan: json['plan'],
      isActive: json['isActive'],
      createdAt: DateTime.parse(json['createdAt']),
      fingerPrint: json['fingerPrint'],
      googleId: json['googleId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'photoUrl': photoUrl,
      'plan': plan,
      'isActive': isActive,
      'createdAt': createdAt.toIso8601String(),
      'fingerPrint': fingerPrint,
      'googleId': googleId,
    };
  }

  UserModel copyWith({
    int? id,
    String? email,
    String? name,
    String? photoUrl,
    String? plan,
    bool? isActive,
    DateTime? createdAt,
    String? fingerPrint,
    String? googleId,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      photoUrl: photoUrl ?? this.photoUrl,
      plan: plan ?? this.plan,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      fingerPrint: fingerPrint ?? this.fingerPrint,
      googleId: googleId ?? this.googleId,
    );
  }
}
