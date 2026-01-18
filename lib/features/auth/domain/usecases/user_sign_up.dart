import 'package:blog_app/core/theme/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/core/common/entities/user.dart';
import 'package:blog_app/features/auth/domain/repositry/auth_repositry.dart';
import 'package:fpdart/fpdart.dart';

class UserSignUp implements Usecase<User, UserSignupParams> {
  final AuthRepositry authRepositry;

  const UserSignUp(this.authRepositry);
  @override
  Future<Either<Failures, User>> call(UserSignupParams parms) async {
    return await authRepositry.signUpWithEmailPassword(
      name: parms.name,
      email: parms.email,
      password: parms.password,
    );
  }
}

class UserSignupParams {
  final String email;
  final String password;
  final String name;

  UserSignupParams({
    required this.email,
    required this.password,
    required this.name,
  });
}
