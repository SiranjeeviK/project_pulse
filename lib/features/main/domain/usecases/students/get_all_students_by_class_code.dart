import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';

import 'package:project_pulse/features/main/domain/entities/student.dart';
import 'package:project_pulse/features/main/domain/repository/main_repository.dart';

class GetAllStudentsByClassCode
    implements UseCase<List<Student>, ClassCodeParams> {
  MainRepository mainRepository;
  GetAllStudentsByClassCode({required this.mainRepository});
  @override
  Future<Either<Failure, List<Student>>> call(ClassCodeParams params) {
    return mainRepository.getAllStudentsByClassCode(params.classCode);
  }
}

class ClassCodeParams {
  String classCode;
  ClassCodeParams({required this.classCode});
}
