/// Represents a user entity. Used in [AuthRepository] to get the current user. Moved from domain to the common folder to be used in multiple features.
/// The [id], [email], and [name] properties are required.
/// ***Entities*** are the core of the application. They are the objects that represent the data that the application operates on.
/// ***Liskov Substitution Principle***: Entities should be substitutable with their subtypes.ie, [UserModel] should be substitutable with [User]
class User {
  final String id;
  final String email;
  final String name;
  final String profilePhotoUrl;
  final String role;

  /// Constructs a new User instance with the specified [id], [email], and [name].
  User({
    required this.id,
    required this.email,
    required this.name,
    required this.profilePhotoUrl,
    required this.role,
  });
}

// This is just a holder, UserModel is the one that fetch data from server in form of JSON