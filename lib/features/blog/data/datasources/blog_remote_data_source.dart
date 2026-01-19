import 'package:blog_app/core/theme/error/exceptions.dart';
import 'package:blog_app/features/blog/data/models/blog_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class BlogRemoteDataSource {
  Future<BlogModel> uploadBlog({BlogModel blog});
}

// class BlogRemoteDataSourceImpl extends BlogRemoteDataSource {
//   final SupabaseClient supabaseClient;
//   BlogRemoteDataSourceImpl({required this.supabaseClient});
//   @override
// //   Future<BlogModel> uploadBlog({BlogModel blog}) async {
// //     try {
// //       // supabaseClient.from("blogs").insert({
// //       //   "title" : blog.title,
// //       //   "content" : blog.content,

// //       // })
// //     } catch (e) {
// //       throw ServerException(e.toString());
// //     }
// //   }
// // }
