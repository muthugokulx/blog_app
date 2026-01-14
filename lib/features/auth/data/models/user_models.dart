import 'package:blog_app/features/auth/domain/entities/user.dart' show User;

class UserModels extends User {
  UserModels({required super.id, required super.email, required super.name});

  factory UserModels.fromJson(Map<String, dynamic> map) {
    return UserModels(
      id: map["id"] ?? "",
      email: map["email"] ?? "",
      name: map["name"] ?? "",
    );
  }
}
