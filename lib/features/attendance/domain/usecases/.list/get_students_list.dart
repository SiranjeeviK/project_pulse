import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';

import 'package:project_pulse/features/attendance/domain/entities/student.dart';
import 'package:project_pulse/features/attendance/domain/repository/attendance_repository.dart';

class GetStudentsList implements UseCase<List<Student>, NoParams> {
  AttendanceRepository attendanceRepository;
  GetStudentsList({required this.attendanceRepository});
  @override
  Future<Either<Failure, List<Student>>> call(NoParams params) {
    // TODO: implement call with params
    return attendanceRepository.getStudentList(classCode: null);
  }
}
