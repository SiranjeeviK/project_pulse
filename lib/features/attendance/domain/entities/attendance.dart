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
class Attendance {
  final String attendanceId;
  final String studentId;
  final String courseId;
  final DateTime date;
  final String status;
  final String rollNumber;
  final String classCode;
  final String facultyId;
  final String remarks;
  final String substituteFacultyId;

  Attendance({
    required this.attendanceId,
    required this.studentId,
    required this.courseId,
    required this.date,
    required this.status,
    required this.rollNumber,
    required this.classCode,
    required this.facultyId,
    required this.remarks,
    required this.substituteFacultyId,
  });

  Attendance copyWith({
    String? attendanceId,
    String? studentId,
    String? courseId,
    DateTime? date,
    String? status,
    String? rollNumber,
    String? classCode,
    String? facultyId,
    String? remarks,
    String? substituteFacultyId,
  }) {
    return Attendance(
      attendanceId: attendanceId ?? this.attendanceId,
      studentId: studentId ?? this.studentId,
      courseId: courseId ?? this.courseId,
      date: date ?? this.date,
      status: status ?? this.status,
      rollNumber: rollNumber ?? this.rollNumber,
      classCode: classCode ?? this.classCode,
      facultyId: facultyId ?? this.facultyId,
      remarks: remarks ?? this.remarks,
      substituteFacultyId: substituteFacultyId ?? this.substituteFacultyId,
    );
  }
}
