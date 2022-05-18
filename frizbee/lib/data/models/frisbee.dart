import 'dart:convert';

class Frisbee {
  String id;
  String city;
  String title;
  String imageUrls;
  String explanation;
  String location;
  int holders;
  int comments;

  Frisbee({
    required this.id,
    required this.city,
    required this.title,
    required this.imageUrls,
    required this.explanation,
    required this.location,
    required this.holders,
    required this.comments,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'city': city,
      'title': title,
      'imageUrls': imageUrls,
      'explanation': explanation,
      'location': location,
      'holders': holders,
    };
  }
}
