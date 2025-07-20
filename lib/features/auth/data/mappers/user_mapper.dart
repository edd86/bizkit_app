import 'package:bizkit_app/features/auth/data/models/user_model.dart';
import 'package:bizkit_app/features/auth/domain/entities/user_entity.dart';

class UserMapper {
  static UserModel toModel(UserEntity entity) {
    return UserModel(
      id: entity.id,
      email: entity.email,
      name: entity.name,
      photoUrl: entity.photoUrl,
      plan: entity.plan,
      isActive: entity.isActive,
      createdAt: entity.createdAt,
      fingerPrint: entity.fingerPrint,
      googleId: entity.googleId,
    );
  }

  static UserEntity toEntity(UserModel model) {
    return UserEntity(
      id: model.id,
      email: model.email,
      name: model.name,
      photoUrl: model.photoUrl,
      plan: model.plan,
      isActive: model.isActive,
      createdAt: model.createdAt,
      fingerPrint: model.fingerPrint,
      googleId: model.googleId,
    );
  }
}
