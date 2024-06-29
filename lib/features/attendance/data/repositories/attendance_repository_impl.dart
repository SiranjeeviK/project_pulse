import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/network/connection_checker.dart';
import 'package:project_pulse/features/attendance/data/datasources/attendance_remote_datasource.dart';
import 'package:project_pulse/features/attendance/data/models/attendance_model.dart';
import 'package:project_pulse/features/attendance/domain/repository/attendance_repository.dart';
import 'package:project_pulse/features/attendance/domain/usecases/mark_attendance.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  AttendanceRemoteDataSource attendanceRemoteDataSource;
  ConnectionChecker connectionChecker;
  AttendanceRepositoryImpl(
      {required this.attendanceRemoteDataSource,
      required this.connectionChecker});
  @override
  Future<Either<Failure, List<AttendanceModel>>> markAttendance(
      MarkAttendanceParams markAttendanceParams) async {
    // try {
    //   final attendanceList =
    //       await attendanceRemoteDataSource.markAttendance(markAttendanceParams);
    //   return Right(attendanceList as List<AttendanceModel>);
    // } catch (e) {
    //   return Left(Failure(e.toString()));
    // }

    if (await connectionChecker.isConnected) {
      try {
        if (markAttendanceParams.studentAttendances.isEmpty) {
          return Left(Failure('No student attendance data'));
        }
        if (markAttendanceParams.mapppingId == 0) {
          return Left(Failure('No mapping id'));
        }
        // if (markAttendanceParams.mapppingId == -1) {
        //   return Left(
        //       Failure('Attendance can not be marked during break time'));
        // }
        final attendanceList = await attendanceRemoteDataSource
            .markAttendance(markAttendanceParams);
        return Right(attendanceList as List<AttendanceModel>);
      } catch (e) {
        return Left(Failure(e.toString()));
      }
    } else {
      return Left(Failure('No internet connection'));
    }
  }
}
