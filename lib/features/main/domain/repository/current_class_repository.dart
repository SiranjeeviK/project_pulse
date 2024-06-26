import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/features/main/domain/entities/class_schedule.dart';

abstract interface class CurrentClassRepository {
  Future<Either<Failure, List<ClassSchedule>>> getCurrentClasses(
      String? classCode);
  Future<Either<Failure, List<ClassSchedule>>> getUpcomingForAllClasses();
  // Future<void> addCurrentClass(ClassSchedule currentClass);
  // Future<void> updateCurrentClass(ClassSchedule currentClass);
  // Future<void> deleteCurrentClass(ClassSchedule currentClass);
}
