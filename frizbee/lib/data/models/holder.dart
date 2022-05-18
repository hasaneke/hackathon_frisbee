import 'dart:convert';

class Holder {
  String userId;
  String name;
  String surName;
  int age;
  String mail;
  int frisbieAmount;
  int catchedFrisbies;
  Holder({
    required this.userId,
    required this.name,
    required this.surName,
    required this.age,
    required this.mail,
    required this.frisbieAmount,
    required this.catchedFrisbies,
  });

  Holder copyWith(
      {String? userId,
      String? name,
      String? surName,
      int? age,
      String? mail,
      int? frisbieAmount,
      int? catchedFrisbies}) {
    return Holder(
        userId: userId ?? this.userId,
        name: name ?? this.name,
        surName: surName ?? this.surName,
        age: age ?? this.age,
        mail: mail ?? this.mail,
        frisbieAmount: frisbieAmount ?? this.frisbieAmount,
        catchedFrisbies: catchedFrisbies ?? this.catchedFrisbies);
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'name': name,
      'surName': surName,
      'age': age,
      'mail': mail,
      'frisbieAmount': frisbieAmount,
      'catchedFrisbies': catchedFrisbies,
    };
  }

  factory Holder.fromMap(Map<String, dynamic> map) {
    return Holder(
      userId: map['userId'] ?? '',
      name: map['name'] ?? '',
      surName: map['surName'] ?? '',
      age: map['age']?.toInt() ?? 0,
      mail: map['mail'] ?? '',
      frisbieAmount: map['frisbieAmount']?.toInt() ?? 0,
      catchedFrisbies: map['catchedFrisbies']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Holder.fromJson(String source) => Holder.fromMap(json.decode(source));
}
