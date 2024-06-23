import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';

import 'package:project_pulse/features/main/domain/entities/student.dart';
import 'package:project_pulse/features/main/domain/repository/main_repository.dart';

class GetAllStudentsByClassCode
    implements UseCase<List<Student>, StudentSearchParams> {
  MainRepository mainRepository;
  GetAllStudentsByClassCode({required this.mainRepository});
  @override
  Future<Either<Failure, List<Student>>> call(StudentSearchParams params) {
    // HACK: This is a hack to get all students by class code
    return mainRepository.getAllStudentsByClassCode(params.classCode??'');
  }
}

class StudentSearchParams {
  String? classCode;
  String? departmentId;
  StudentSearchParams({this.classCode, this.departmentId});
}
