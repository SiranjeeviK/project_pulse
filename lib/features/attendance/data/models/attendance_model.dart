import 'dart:convert';

import 'package:project_pulse/features/attendance/domain/entities/attendance.dart';

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

class AttendanceModel extends Attendance {
  AttendanceModel({
    required super.attendanceId,
    required super.date,
    required super.nthPeriod,
    required super.status,
    required super.rollNo,
    super.remarks,
    super.substituteFacultyId,
    required super.mapppingId,
    required super.courseCode,
    required super.classCode,
    super.facultyId,
    required super.studentId,
  });

  AttendanceModel copyWith({
    String? attendanceId,
    DateTime? date,
    int? nthPeriod,
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
    return AttendanceModel(
      attendanceId: attendanceId ?? super.attendanceId,
      date: date ?? super.date,
      nthPeriod: nthPeriod ?? super.nthPeriod,
      status: status ?? super.status,
      rollNo: rollNo ?? super.rollNo,
      remarks: remarks ?? super.remarks,
      substituteFacultyId: substituteFacultyId ?? super.substituteFacultyId,
      mapppingId: mapppingId ?? super.mapppingId,
      courseCode: courseCode ?? super.courseCode,
      classCode: classCode ?? super.classCode,
      facultyId: facultyId ?? super.facultyId,
      studentId: studentId ?? super.studentId,
    );
  }

  /// Returns a `Map<String, dynamic>` map representing the user.
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'attendance_id': attendanceId,
      'date': date.toIso8601String(),
      'nth_period': nthPeriod,
      'status': status,
      'roll_number': rollNo,
      'remarks': remarks,
      'substitute_faculty_id': substituteFacultyId,
      'mapping_id': mapppingId,
      'course_code': courseCode,
      'class_code': classCode,
      'faculty_id': facultyId,
      'student_id': studentId,
    };

    return map;
  }

  /// Creates a AttendanceModel instance from a `Map<String, dynamic>`.
  factory AttendanceModel.fromMap(Map<String, dynamic> map) {
    return AttendanceModel(
      attendanceId: map['attendance_id'] as String? ?? '',
      date: DateTime.parse(map['date'] as String? ?? ''),
      nthPeriod: map['nth_period'] as int? ?? 0,
      status: map['status'] as String? ?? '',
      rollNo: map['roll_number'] as String? ?? '',
      remarks: map['remarks'] as String? ?? '',
      substituteFacultyId: map['substitute_faculty_id'] as String? ?? '',
      mapppingId: map['mapping_id'] ?? 0,
      courseCode: map['course_code'] as String? ?? '',
      classCode: map['class_code'] as String? ?? '',
      facultyId: map['faculty_id'] as String? ?? '',
      studentId: map['student_id'] as String? ?? '',
    );
  }

  /// Converts super instance of `UserModel` into a JSON string.
  String toJson() => json.encode(toMap());

  /// Creates a user instance from a JSON string.
  factory AttendanceModel.fromJson(String source) => AttendanceModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  String toString() {
    // return 'AttendanceModel(attendanceId: $attendanceId, date: $date, status: $status, rollNo: $rollNo, remarks: $remarks, substituteFacultyId: $substituteFacultyId, mapppingId: $mapppingId, courseCode: $courseCode, classCode: $classCode, facultyId: $facultyId, studentId: $studentId)';
    return minifiedString;
  }

  String get minifiedString {
    return 'AttendanceModel(attendanceId: $attendanceId, status: $status, substituteFacultyId: $substituteFacultyId, facultyId: $facultyId\n)';
  }
}



  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'attendanceId': attendanceId,
  //     'date': date.millisecondsSinceEpoch,
  //     'status': status,
  //     'rollNo': rollNo,
  //     'remarks': remarks,
  //     'substituteFacultyId': substituteFacultyId,
  //     'mapppingId': mapppingId,
  //     'courseCode': courseCode,
  //     'classCode': classCode,
  //     'facultyId': facultyId,
  //     'studentId': studentId,
  //   };
  // }

  // factory AttendanceModel.fromMap(Map<String, dynamic> map) {
  //   return AttendanceModel(
  //     attendanceId: map['attendanceId'] as String,
  //     date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
  //     status: map['status'] as String,
  //     rollNo: map['rollNo'] as String,
  //     remarks: map['remarks'] != null ? map['remarks'] as String : null,
  //     substituteFacultyId: map['substituteFacultyId'] != null ? map['substituteFacultyId'] as String : null,
  //     mapppingId: map['mapppingId'] as String,
  //     courseCode: map['courseCode'] as String,
  //     classCode: map['classCode'] as String,
  //     facultyId: map['facultyId'] != null ? map['facultyId'] as String : null,
  //     studentId: map['studentId'] as String,
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory AttendanceModel.fromJson(String source) => AttendanceModel.fromMap(json.decode(source) as Map<String, dynamic>);

  // @override
  // String toString() {
  //   return 'AttendanceModel(attendanceId: $attendanceId, date: $date, status: $status, rollNo: $rollNo, remarks: $remarks, substituteFacultyId: $substituteFacultyId, mapppingId: $mapppingId, courseCode: $courseCode, classCode: $classCode, facultyId: $facultyId, studentId: $studentId)';
  // }

  // @override
  // bool operator ==(covariant AttendanceModel other) {
  //   if (identical(super, other)) return true;
  
  //   return 
  //     other.attendanceId == attendanceId &&
  //     other.date == date &&
  //     other.status == status &&
  //     other.rollNo == rollNo &&
  //     other.remarks == remarks &&
  //     other.substituteFacultyId == substituteFacultyId &&
  //     other.mapppingId == mapppingId &&
  //     other.courseCode == courseCode &&
  //     other.classCode == classCode &&
  //     other.facultyId == facultyId &&
  //     other.studentId == studentId;
  // }

  // @override
  // int get hashCode {
  //   return attendanceId.hashCode ^
  //     date.hashCode ^
  //     status.hashCode ^
  //     rollNo.hashCode ^
  //     remarks.hashCode ^
  //     substituteFacultyId.hashCode ^
  //     mapppingId.hashCode ^
  //     courseCode.hashCode ^
  //     classCode.hashCode ^
  //     facultyId.hashCode ^
  //     studentId.hashCode;
  // }