import 'package:blog_app/core/theme/error/failures.dart';
import 'package:blog_app/features/auth/domain/entities/user.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepositry {
  Future<Either<Failures, User>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failures, User>> loginWithEmailPassword({
    required String email,
    required String password,
  });
}
