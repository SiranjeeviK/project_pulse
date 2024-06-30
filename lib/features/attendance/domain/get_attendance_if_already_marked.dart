import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/attendance/domain/entities/attendance.dart';
import 'package:project_pulse/features/attendance/domain/repository/attendance_repository.dart';

class GetAttendanceIfAlreadyMarked
    implements UseCase<List<Attendance>, CheckAttendanceAlreadyMarkedParams> {
  final AttendanceRepository repository;

  GetAttendanceIfAlreadyMarked(this.repository);

  @override
  Future<Either<Failure, List<Attendance>>> call(
      CheckAttendanceAlreadyMarkedParams params) async {
    return await repository.getAttendanceByDatePeriodMappingId(
        params.date, params.nthPeriod, params.mappingId);
  }
}

class CheckAttendanceAlreadyMarkedParams {
  final DateTime date;
  final int nthPeriod;
  final int mappingId;

  CheckAttendanceAlreadyMarkedParams({
    required this.date,
    required this.nthPeriod,
    required this.mappingId,
  });

  @override
  String toString() =>
      'CheckAttendanceAlreadyMarkedParams(date: $date, nthPeriod: $nthPeriod, mappingId: $mappingId)';
}
