import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/common/entities/user.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/auth/domain/repository/auth_repository.dart';

// Use case for user login
/// UserLogin is a use case that logs in a user
/// It takes in a [UserLoginParams] object and returns a [User] object if the operation is successful
class UserLogin implements UseCase<User, UserLoginParams> {
  final AuthRepository authRepository;
  UserLogin(this.authRepository);

  @override
  Future<Either<Failure, User>> call(UserLoginParams params) async {
    return await authRepository.loginWithEmailPassword(
      email: params.email,
      password: params.password,
    );
  }
}

// Parameters for user login
/// UserLoginParams is a class that holds the parameters required for the user login use case
/// It holds the email and password of the user
class UserLoginParams {
  final String email;
  final String password;

  UserLoginParams({
    required this.email,
    required this.password,
  });
}
