import 'dart:convert';

class Comment {
  String id;
  String name;
  String surname;
  String comment;
  String imageUrl;
  int likes;
  Comment({
    required this.id,
    required this.name,
    required this.surname,
    required this.comment,
    required this.imageUrl,
    required this.likes,
  });

  Comment copyWith({
    String? id,
    String? name,
    String? surname,
    String? comment,
    String? imageUrl,
    int? likes,
  }) {
    return Comment(
      id: id ?? this.id,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      comment: comment ?? this.comment,
      imageUrl: imageUrl ?? this.imageUrl,
      likes: likes ?? this.likes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'surname': surname,
      'comment': comment,
      'imageUrl': imageUrl,
      'likes': likes,
    };
  }

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      surname: map['surname'] ?? '',
      comment: map['comment'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      likes: map['likes']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Comment.fromJson(String source) =>
      Comment.fromMap(json.decode(source));
}
