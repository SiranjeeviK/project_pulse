part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthSignUp extends AuthEvent {
  final String email;
  final String name;
  final String password;
  final String role;

  AuthSignUp({
    required this.email,
    required this.name,
    required this.password,
    required this.role,
  });
}

class AuthLogin extends AuthEvent {
  final String email;
  final String password;

  AuthLogin({
    required this.email,
    required this.password,
  });
}

class AuthIsUserLoggedIn extends AuthEvent {}

class AuthLogout extends AuthEvent {
  AuthLogout();
}
