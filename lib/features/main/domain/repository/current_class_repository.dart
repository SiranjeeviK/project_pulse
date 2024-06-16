import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/features/main/domain/entities/current_class.dart';

abstract interface class CurrentClassRepository {
  Future<Either<Failure, CurrentClass>> getCurrentClasses();
  // Future<void> addCurrentClass(CurrentClass currentClass);
  // Future<void> updateCurrentClass(CurrentClass currentClass);
  // Future<void> deleteCurrentClass(CurrentClass currentClass);
}
