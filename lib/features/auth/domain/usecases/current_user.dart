import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/common/entities/user.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/auth/domain/repository/auth_repository.dart';

/// CurrentUser is a use case that returns the current user
/// It takes in a [NoParams] object and returns a [User] object if the operation is successful
/// It uses the [AuthRepository] to get the current user
class CurrentUser implements UseCase<User, NoParams> {
  final AuthRepository authRepository;

  CurrentUser(this.authRepository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await authRepository.currentUser();
  }
}
