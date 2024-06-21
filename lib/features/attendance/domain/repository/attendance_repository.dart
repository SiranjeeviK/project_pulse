import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/features/attendance/domain/entities/attendance.dart';
import 'package:project_pulse/features/attendance/domain/usecases/mark_attendance.dart';

abstract interface class AttendanceRepository {
  // attendance crud operations
  // Future<Either<Failure, List<Attendance>>> getAttendanceList();
  Future<Either<Failure, List<Attendance>>> markAttendance(
      AttendanceParams attendanceParams);
  // Future<Either<Failure, void>> deleteAttendance();
  // Future<Either<Failure, void>> updateAttendance();

  // // Attendance report by batch, department, class, student
  // Future<Either<Failure, List<Attendance>>> getAttendanceReportByBatch(
  //     {required int batchId});
  // Future<Either<Failure, List<Attendance>>> getAttendanceReportByDepartment(
  //     {required String departmentCode});
  // Future<Either<Failure, List<Attendance>>> getAttendanceReportByClass(
  //     {required String classCode});
  // Future<Either<Failure, List<Attendance>>> getAttendanceReportByStudent(
  //     {String? studentId, String? registrationNo, String? rollNo});

  // get student list, course list, faculty list
  // Future<Either<Failure, Student>> getStudentDetails(
  //     {required String? studentId, required String? registrationNo});

  // Future<Either<Failure, List<Student>>> getStudentList(
  //     {required String? classCode});

  // Future<Either<Failure, List<Course>>> getCourseList(
  //     {required String? classCode});
  // Future<Either<Failure, List<Faculty>>> getFacultyList(
  //     {String? departmentCode,
  //     String? classCode,
  //     String? courseCode,
  //     String? facultyId});
  // Future<Either<Failure, List<Batch>>> getBatchList();
  // Future<Either<Failure, List<Department>>> getDepartmentList();
  // Future<Either<Failure, List<Class>>> getClassesList(
  //     {required String? departmentCode});
}
