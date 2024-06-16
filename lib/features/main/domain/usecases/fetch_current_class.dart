import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/current_class.dart';
import 'package:project_pulse/features/main/domain/repository/current_class_repository.dart';

class FetchCurrentClass implements UseCase<CurrentClass, NoParams> {
  final CurrentClassRepository repository;

  FetchCurrentClass(this.repository);

  @override
  Future<Either<Failure, CurrentClass>> call(NoParams params) async {
    return await repository.getCurrentClasses();
  }
}
