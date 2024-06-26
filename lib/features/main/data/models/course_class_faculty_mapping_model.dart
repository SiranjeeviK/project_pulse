import 'dart:convert';

import 'package:project_pulse/features/main/domain/entities/course_class_faculty_mapping.dart';

class CourseClassFacultyMappingModel extends CourseClassFacultyMapping {
  CourseClassFacultyMappingModel({
    required super.mappingId,
    required super.courseCode,
    required super.classCode,
    required super.facultyId,
    required super.semester,
    super.courseName,
    super.className,
  });

  CourseClassFacultyMappingModel copyWith({
    int? mappingId,
    String? courseCode,
    String? classCode,
    String? facultyId,
    int? semester,
    String? courseName,
    String? className,
  }) {
    return CourseClassFacultyMappingModel(
      courseCode: courseCode ?? this.courseCode,
      classCode: classCode ?? this.classCode,
      facultyId: facultyId ?? this.facultyId,
      mappingId: mappingId ?? this.mappingId,
      semester: semester ?? this.semester,
      courseName: courseName ?? this.courseName,
      className: className ?? this.className,
    );
  }

  /// Returns a `Map<String, dynamic>` map representing the user.

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mapping_id'] = mappingId;
    map['course_code'] = courseCode;
    map['class_code'] = classCode;
    map['faculty_id'] = facultyId;
    map['semester'] = semester;
    map['course_name'] = courseName;
    map['class_name'] = className;
    return map;
  }

  /// Creates a user instance from a `Map<String, dynamic>`.
  ///
  factory CourseClassFacultyMappingModel.fromMap(Map<String, dynamic> map) {
    return CourseClassFacultyMappingModel(
      mappingId: map['mapping_id'] ?? 0,
      courseCode: map['course_code'] ?? '',
      classCode: map['class_code'] ?? '',
      facultyId: map['faculty_id'] ?? '',
      semester: map['semester'] ?? 0,
      courseName: map['course_name'] ?? '',
      className: map['class_name'] ?? '',
    );
  }

  /// Creates a user instance from a JSON string.
  factory CourseClassFacultyMappingModel.fromJson(String source) =>
      CourseClassFacultyMappingModel.fromMap(json.decode(source));
}
