import 'package:blog_app/core/theme/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class Usecase<SuccessType, Parms> {
  Future<Either<Failures, SuccessType>> call(Parms parms);
}
