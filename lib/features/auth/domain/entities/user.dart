class User {
  final int? id;
  final String email;
  final String name;
  final String photoUrl;
  final String plan;
  final bool isActive;
  final DateTime createdAt;
  final String fingerPrint;
  final String googleId;

  User({
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
}
