import 'package:blog_app/core/theme/error/exceptions.dart';
import 'package:blog_app/features/auth/data/models/user_models.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<UserModels> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<UserModels> loginWithEmailPassword({
    required String email,
    required String password,
  });
}

//General Class to Implement the interface
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;

  AuthRemoteDataSourceImpl({required this.supabaseClient});
  @override
  Future<UserModels> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    //todo
    throw UnimplementedError();
  }

  @override
  Future<UserModels> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth.signUp(
        password: password,
        email: email,
        data: {"name": name},
      );
      if (response.user == null) {
        throw const ServerException("User is null!");
      }
      return UserModels.fromJson(response.user!.toJson());
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
