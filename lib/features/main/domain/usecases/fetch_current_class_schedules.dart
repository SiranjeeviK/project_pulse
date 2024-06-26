import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/class_schedule.dart';
import 'package:project_pulse/features/main/domain/repository/current_class_repository.dart';

class FetchCurrentClass implements UseCase<List<ClassSchedule>, ClassParams> {
  final CurrentClassRepository repository;

  FetchCurrentClass(this.repository);

  @override
  Future<Either<Failure, List<ClassSchedule>>> call(ClassParams params) async {
    return await repository.getCurrentClasses(params.classCode);
  }
}

class ClassParams {
  String classCode;
  ClassParams({this.classCode = ''});
}
