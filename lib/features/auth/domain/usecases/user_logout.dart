import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/auth/domain/repository/auth_repository.dart';

class UserLogout implements UseCase<void, NoParams> {
  final AuthRepository repository;

  UserLogout(this.repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return await repository.signOut();
  }
}