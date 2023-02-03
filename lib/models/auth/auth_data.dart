import 'dart:convert';

import 'package:hive/hive.dart';

part 'auth_data.g.dart';

@HiveType(typeId: 0)
class AuthData {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String fullName;
  @HiveField(2)
  final String email;
  AuthData({
    required this.id,
    required this.fullName,
    required this.email,
  });

  AuthData copyWith({
    String? id,
    String? fullName,
    String? email,
  }) {
    return AuthData(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'fullName': fullName,
      'email': email,
    };
  }

  factory AuthData.fromMap(Map<String, dynamic> map) {
    return AuthData(
      id: map['id'] as String,
      fullName: map['fullName'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthData.fromJson(String source) =>
      AuthData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AuthData(id: $id, fullName: $fullName, email: $email)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthData &&
        other.id == id &&
        other.fullName == fullName &&
        other.email == email;
  }

  @override
  int get hashCode => id.hashCode ^ fullName.hashCode ^ email.hashCode;
}
