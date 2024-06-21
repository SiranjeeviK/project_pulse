import 'package:fpdart/src/either.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/features/attendance/data/datasources/attendance_remote_datasource.dart';
import 'package:project_pulse/features/attendance/data/models/attendance_model.dart';
import 'package:project_pulse/features/attendance/domain/repository/attendance_repository.dart';
import 'package:project_pulse/features/attendance/domain/usecases/mark_attendance.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  AttendanceRemoteDatasource attendanceRemoteDatasource;
  AttendanceRepositoryImpl({required this.attendanceRemoteDatasource});
  @override
  Future<Either<Failure, List<AttendanceModel>>> markAttendance(
      AttendanceParams attendanceParams) async {
    try {
      final attendanceList =
          await attendanceRemoteDatasource.markAttendance(attendanceParams);
      return Right(attendanceList as List<AttendanceModel>);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
