import 'package:blog_app/core/theme/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/auth/domain/entities/user.dart';
import 'package:blog_app/features/auth/domain/repositry/auth_repositry.dart';
import 'package:fpdart/fpdart.dart';

class CurrentUser implements Usecase<User, NoParams> {
  final AuthRepositry authRepositry;
  CurrentUser(this.authRepositry);
  @override
  Future<Either<Failures, User>> call(NoParams parms) async {
    return await authRepositry.currentUser();
  }
}
