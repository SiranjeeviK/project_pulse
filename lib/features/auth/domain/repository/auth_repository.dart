import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/common/entities/user.dart';
import 'package:project_pulse/core/error/failure.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, User>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
    required String role,
  });

  Future<Either<Failure, User>> loginWithEmailPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, void>> signOut();

  Future<Either<Failure, User>> currentUser();
}
