import 'package:blog_app/core/theme/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepositry {
  Future<Either<Failures, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failures, String>> loginWithEmailPassword({
    required String email,
    required String password,
  });
}
