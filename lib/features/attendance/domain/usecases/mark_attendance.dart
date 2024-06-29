// create table
//   public.attendance (
//     date date not null,
//     status text null,
//     roll_number text null,
//     remarks text null,
//     substitute_faculty_id uuid null,
//     mapping_id bigint null,
//     attendance_id text not null,
//     constraint attendance_pkey primary key (attendance_id),
//     constraint attendance_unique_attendance_id_key unique (attendance_id),
//     constraint attendance_mapping_id_fkey foreign key (mapping_id) references course_class_faculty_mapping (mapping_id) on update cascade on delete restrict,
//     constraint attendance_roll_number_fkey foreign key (roll_number) references students (roll_number) on update cascade on delete restrict,
//     constraint attendance_substitute_faculty_id_fkey foreign key (substitute_faculty_id) references faculty (faculty_id) on update restrict on delete restrict,
//     constraint attendance_status_check check (
//       (
//         status = any (
//           array[
//             'present'::text,
//             'absent'::text,
//             'late'::text,
//             'on_duty'::text
//           ]
//         )
//       )
//     )
//   ) tablespace pg_default;

import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/attendance/domain/entities/attendance.dart';
import 'package:project_pulse/features/attendance/domain/entities/student_attendance.dart';
import 'package:project_pulse/features/attendance/domain/repository/attendance_repository.dart';

class MarkAttendance
    implements UseCase<List<Attendance>, MarkAttendanceParams> {
  final AttendanceRepository repository;

  MarkAttendance(this.repository);

  @override
  Future<Either<Failure, List<Attendance>>> call(
      MarkAttendanceParams params) async {
    return await repository.markAttendance(params);
  }
}

/// Parameters for marking attendance are studentAttendances(studentId+rollNo+status), date, remarks, facultyId, substituteFacultyId and mapppingId
class MarkAttendanceParams {
  final List<StudentAttendance> studentAttendances;
  final DateTime date;
  final String? remarks;
  final String? facultyId;
  final String? substituteFacultyId;
  final int mapppingId;
  final int nthPeriod;

  MarkAttendanceParams({
    required this.studentAttendances,
    required this.date,
    this.remarks,
    this.facultyId, // this is the faculty who is mapped to the class for that course
    this.substituteFacultyId, //if attendance is marked by substitute faculty
    required this.mapppingId, //it has data like course_id, class_code, faculty_id and semester
    required this.nthPeriod,
  });

  @override
  String toString() {
    return 'MarkAttendanceParams(studentAttendances: $studentAttendances, date: $date, remarks: $remarks, facultyId: $facultyId, substituteFacultyId: $substituteFacultyId, mapppingId: $mapppingId, nthPeriod: $nthPeriod)';
  }
}
