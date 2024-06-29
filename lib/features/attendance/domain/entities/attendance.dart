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

class Attendance {
  // available in attendance table
  final String attendanceId;
  final DateTime date;
  final String status;
  final String rollNo;
  final String? remarks;
  final String? substituteFacultyId;
  final int mapppingId;

  // available in course_class_faculty_mapping table
  final String courseCode;
  final String classCode;
  final String? facultyId;

  // available in students table
  final String studentId;
  

  Attendance({
    required this.attendanceId,
    required this.date,
    required this.status,
    required this.rollNo,
    this.remarks,
    this.substituteFacultyId,
    required this.mapppingId,
    required this.courseCode,
    required this.classCode,
    this.facultyId,
    required this.studentId,
  });

  Attendance copyWith({
    String? attendanceId,
    DateTime? date,
    String? status,
    String? rollNo,
    String? remarks,
    String? substituteFacultyId,
    int? mapppingId,
    String? courseCode,
    String? classCode,
    String? facultyId,
    String? studentId,
  }) {
    return Attendance(
      attendanceId: attendanceId ?? this.attendanceId,
      date: date ?? this.date,
      status: status ?? this.status,
      rollNo: rollNo ?? this.rollNo,
      remarks: remarks ?? this.remarks,
      substituteFacultyId: substituteFacultyId ?? this.substituteFacultyId,
      mapppingId: mapppingId ?? this.mapppingId,
      courseCode: courseCode ?? this.courseCode,
      classCode: classCode ?? this.classCode,
      facultyId: facultyId ?? this.facultyId,
      studentId: studentId ?? this.studentId,
  );
  }
}
