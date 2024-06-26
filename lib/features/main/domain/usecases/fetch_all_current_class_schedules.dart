import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/class_schedule.dart';
import 'package:project_pulse/features/main/domain/repository/current_class_repository.dart';

class FetchAllCurrentClassSchedules
    implements UseCase<List<ClassSchedule>, NoParams> {
  final CurrentClassRepository repository;

  FetchAllCurrentClassSchedules(this.repository);

  @override
  Future<Either<Failure, List<ClassSchedule>>> call(NoParams params) async {
    return await repository.getUpcomingForAllClasses();
  }
}
