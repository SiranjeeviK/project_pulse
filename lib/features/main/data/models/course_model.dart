// create table
//   public.courses (
//     course_id uuid not null default gen_random_uuid (),
//     course_name text not null,
//     course_code text not null,
//     description text null,
//     "isLab" boolean null default false,
//     "isAdditional" boolean null default false,
//     constraint courses_pkey primary key (course_id),
//     constraint courses_course_code_key unique (course_code),
//   ) tablespace pg_default;

//

import 'dart:convert';

import 'package:project_pulse/features/main/domain/entities/course.dart';

class CourseModel extends Course {
  CourseModel({
    required super.courseId,
    required super.courseName,
    required super.courseCode,
    required super.description,
    required super.teacherId,
    required super.semester,
    required super.isLab,
    required super.isAdditional,
  });

  CourseModel copyWith({
    String? courseId,
    String? courseName,
    String? courseCode,
    String? description,
    String? teacherId,
    int? semester,
    bool? isLab,
    bool? isAdditional,
  }) {
    return CourseModel(
      courseId: courseId ?? this.courseId,
      courseName: courseName ?? this.courseName,
      courseCode: courseCode ?? this.courseCode,
      description: description ?? this.description,
      teacherId: teacherId ?? this.teacherId,
      semester: semester ?? this.semester,
      isLab: isLab ?? this.isLab,
      isAdditional: isAdditional ?? this.isAdditional,
    );
  }

  /// Returns a `Map<String, dynamic>` map representing the user.
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['course_id'] = courseId;
    map['course_name'] = courseName;
    map['course_code'] = courseCode;
    map['description'] = description;
    map['teacher_id'] = teacherId;
    map['semester'] = semester;
    map['is_lab'] = isLab;
    map['is_additional'] = isAdditional;

    return map;
  }

  /// Creates a user instance from a `Map<String, dynamic>`.
  factory CourseModel.fromMap(Map<String, dynamic> map) {
    return CourseModel(
      courseId: map['course_id'] ?? '',
      courseName: map['course_name'] ?? '',
      courseCode: map['course_code'] ?? '',
      description: map['description'] ?? '',
      teacherId: map['teacher_id'] ?? '',
      semester: map['semester'] ?? 0,
      isLab: map['is_lab'] ?? false,
      isAdditional: map['is_additional'] ?? false,
    );
  }

  /// Converts this instance of `UserModel` into a JSON string.
  String toJson() => json.encode(toMap());

  /// Creates a user instance from a JSON string.
  factory CourseModel.fromJson(String source) => CourseModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );
}
