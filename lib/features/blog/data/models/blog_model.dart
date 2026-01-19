import 'package:blog_app/features/blog/domain/entities/blog.dart';

class BlogModel extends Blog {
  BlogModel({
    required super.id,
    required super.posterId,
    required super.title,
    required super.content,
    required super.imageUrl,
    required super.topics,
    required super.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "posterId": posterId,
      "title": title,
      "content": content,
      "imageUrl": imageUrl,
      "topics": topics,
      "updatedAt": updatedAt.toIso8601String(),
    };
  }

  factory BlogModel.fromMap(Map<String, dynamic> map) {
    return BlogModel(
      id: map["id"] as String,
      posterId: map["posterId"] as String,
      title: map["title"] as String,
      content: map["content"],
      imageUrl: map["imageUrl"],
      topics: List<String>.from(map["topics"] as List<String>),
      updatedAt: map["updated_at"] == null
          ? DateTime.now()
          : DateTime.parse(map["updated_at"]),
    );
  }
}
