import 'package:blog_app/core/theme/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/auth/domain/entities/user.dart';
import 'package:blog_app/features/auth/domain/repositry/auth_repositry.dart';
import "package:fpdart/fpdart.dart";

class UserLogin implements Usecase<User, UserLoginParams> {
  final AuthRepositry authRepositry;

  const UserLogin(this.authRepositry);

  @override
  Future<Either<Failures, User>> call(UserLoginParams parms) async {
    return await authRepositry.loginWithEmailPassword(
      email: parms.email,
      password: parms.password,
    );
  }
}

class UserLoginParams {
  final String email;
  final String password;

  UserLoginParams({required this.email, required this.password});
}
