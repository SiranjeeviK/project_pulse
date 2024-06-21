// create table
//   public.attendance (
//     attendance_id uuid not null,
//     student_id uuid null,
//     course_id uuid null,
//     date date not null,
//     status text null,
//     roll_number text null,
//     class_code text null,
//     faculty_id uuid null,
//     remarks text null,
//     substitute_faculty_id uuid null,
//     constraint attendance_pkey primary key (attendance_id),
//     constraint attendance_course_id_fkey foreign key (course_id) references courses (course_id),
//     constraint attendance_faculty_id_fkey foreign key (faculty_id) references faculty (faculty_id) on update cascade on delete restrict,
//     constraint attendance_class_code_fkey foreign key (class_code) references classes (class_code) on update cascade on delete restrict,
//     constraint attendance_roll_number_fkey foreign key (roll_number) references students (roll_number) on update cascade on delete restrict,
//     constraint attendance_user_id_fkey foreign key (student_id) references users (user_id),
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
import 'package:project_pulse/features/attendance/domain/repository/attendance_repository.dart';

class MarkAttendance implements UseCase<List<Attendance>, AttendanceParams> {
  final AttendanceRepository repository;

  MarkAttendance(this.repository);

  @override
  Future<Either<Failure, List<Attendance>>> call(
      AttendanceParams params) async {
    return await repository.markAttendance(params);
  }
}

class AttendanceParams {
  final List<String> studentIds;
  final String classCode;
  final String courseCode;
  final String facultyId;
  final String status;
  final String? remarks;
  final String? substituteFacultyId;
  final DateTime date;

  AttendanceParams({
    required this.studentIds,
    required this.classCode,
    required this.courseCode,
    required this.facultyId,
    required this.status,
    this.remarks,
    this.substituteFacultyId,
    required this.date,
  });
}
