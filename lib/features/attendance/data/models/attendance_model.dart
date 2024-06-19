import 'dart:convert';

import 'package:project_pulse/features/attendance/domain/entities/attendance.dart';

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
class AttendanceModel extends Attendance {
  AttendanceModel({
    required super.attendanceId,
    required super.studentId,
    required super.courseId,
    required super.date,
    required super.status,
    required super.rollNumber,
    required super.classCode,
    required super.facultyId,
    required super.remarks,
    required super.substituteFacultyId,
  });

  AttendanceModel copyWith({
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
    return AttendanceModel(
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

  /// Returns a `Map<String, dynamic>` map representing the user.
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attendance_id'] = attendanceId;
    map['student_id'] = studentId;
    map['course_id'] = courseId;
    map['date'] = date.toIso8601String();
    map['status'] = status;
    map['roll_number'] = rollNumber;
    map['class_code'] = classCode;
    map['faculty_id'] = facultyId;
    map['remarks'] = remarks;
    map['substitute_faculty_id'] = substituteFacultyId;
    return map;
  }

  /// Creates a user instance from a `Map<String, dynamic>`.
  factory AttendanceModel.fromMap(Map<String, dynamic> map) {
    return AttendanceModel(
      attendanceId: map['attendance_id'] ?? '',
      studentId: map['student_id'] ?? '',
      courseId: map['course_id'] ?? '',
      date: DateTime.parse(map['date'] as String),
      status: map['status'] ?? '',
      rollNumber: map['roll_number'] ?? '',
      classCode: map['class_code'] ?? '',
      facultyId: map['faculty_id'] ?? '',
      remarks: map['remarks'] ?? '',
      substituteFacultyId: map['substitute_faculty_id'] ?? '',
    );
  }

  /// Converts this instance of `UserModel` into a JSON string.
  String toJson() => json.encode(toMap());

  /// Creates a user instance from a JSON string.
  factory AttendanceModel.fromJson(String source) => AttendanceModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );
}
