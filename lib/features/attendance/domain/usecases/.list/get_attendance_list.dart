import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/attendance/domain/entities/attendance.dart';
import 'package:project_pulse/features/attendance/domain/repository/attendance_repository.dart';

class GetAttendanceList implements UseCase<List<Attendance>, NoParams> {
  final AttendanceRepository attendanceRepository;

  GetAttendanceList({required this.attendanceRepository});
  @override
  Future<Either<Failure, List<Attendance>>> call(params) {
    // return attendanceRepository.getAttendanceList();
    // TODO: implement getAttendanceList
    throw UnimplementedError();
  }
}