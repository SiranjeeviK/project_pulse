import 'dart:convert';

import 'package:project_pulse/core/common/entities/user.dart';

/// Represents a user model that extends the base [User] class.
/// The [UserModel] class is used to represent a [User] entity in the application. Used in [AuthRepositoryImpl] to get the current user.
///
/// ***Liskov Substitution Principle***: Entities should be substitutable with their subtypes.
/// In this case, [UserModel] should be substitutable with [User].
///
/// It is a subclass of the [User] class.
/// The [UserModel] class is used to store user data and perform operations on user data.
///
class UserModel extends User {
  UserModel({
    required super.id,
    required super.email,
    required super.name,
    required super.profilePhotoUrl,
    required super.role,
  });

  UserModel copyWith({
    String? id,
    String? email,
    String? name,
    String? profilePhotoUrl,
    String? role,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      profilePhotoUrl: profilePhotoUrl ?? this.profilePhotoUrl,
      role: role ?? this.role,
    );
  }

  /// returns a `Map<String, dynamic>` map
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'name': name,
      'profilePhotoUrl': profilePhotoUrl,
      'role': role,
    };
  }

  ///this factory constructor takes a 'Map<String, dynamic>' returns an instance of `UserModel`
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['user_id'] ?? '',
      email: map['email'] ?? '',
      name: map['username'] ?? '',
      profilePhotoUrl: map['profile_picture'] ?? '',
      role: map['role'] ?? '',
    );
  }

  /// convert this instance of `UserModel` into map and then convert that map into json
  String toJson() => json.encode(toMap());

  ///this factory constructor takes a JSON string and returns an instance of `UserModel`
  factory UserModel.fromJson(String source) => UserModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );
}
