import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';

import 'package:project_pulse/features/main/domain/entities/student.dart';
import 'package:project_pulse/features/main/domain/repository/main_repository.dart';

class GetAllStudents implements UseCase<List<Student>, NoParams> {
  MainRepository mainRepository;
  GetAllStudents({required this.mainRepository});
  @override
  Future<Either<Failure, List<Student>>> call(NoParams params) {
    return mainRepository.getAllStudents();
  }
}
