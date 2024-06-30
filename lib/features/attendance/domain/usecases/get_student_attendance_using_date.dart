import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/attendance/domain/entities/attendance.dart';
import 'package:project_pulse/features/attendance/domain/repository/attendance_repository.dart';

class GetStudentAttendanceUsingDate
    implements UseCase<List<Attendance>, GetStudentAttendanceUsingDateParams> {
  final AttendanceRepository repository;

  GetStudentAttendanceUsingDate(this.repository);

  @override
  Future<Either<Failure, List<Attendance>>> call(
      GetStudentAttendanceUsingDateParams params) async {
    return await repository.getStudentAttendanceUsingDate(params);
  }
}

class GetStudentAttendanceUsingDateParams {
  String rollNo;
  DateTime date;

  GetStudentAttendanceUsingDateParams(
      {required this.rollNo, required this.date});
}
