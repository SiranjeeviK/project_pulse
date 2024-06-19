import 'dart:convert';

import 'package:project_pulse/features/main/domain/entities/class.dart';

class ClassModel extends Class {
  ClassModel({
    required super.classId,
    required super.className,
    required super.classCode,
    required super.departmentId,
    required super.classAdvisorId,
    required super.batch,
    required super.graduationYear,
    required super.lectureHall,
    required super.section,
    required super.totalStudents,
  });

  ClassModel copyWith({
    int? classId,
    String? className,
    String? classCode,
    int? departmentId,
    String? classAdvisorId,
    String? batch,
    int? graduationYear,
    String? lectureHall,
    String? section,
    int? totalStudents,
  }) {
    return ClassModel(
      classId: classId ?? this.classId,
      className: className ?? this.className,
      classCode: classCode ?? this.classCode,
      departmentId: departmentId ?? this.departmentId,
      classAdvisorId: classAdvisorId ?? this.classAdvisorId,
      batch: batch ?? this.batch,
      graduationYear: graduationYear ?? this.graduationYear,
      lectureHall: lectureHall ?? this.lectureHall,
      section: section ?? this.section,
      totalStudents: totalStudents ?? this.totalStudents,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'class_id': classId,
      'class_name': className,
      'class_code': classCode,
      'department_id': departmentId,
      'class_advisor_id': classAdvisorId,
      'batch': batch,
      'graduation_year': graduationYear,
      'lecture_hall': lectureHall,
      'section': section,
      'total_students_present': totalStudents,
    };
  }

  factory ClassModel.fromMap(Map<String, dynamic> json) {
    return ClassModel(
      classId: json['class_id'] ?? 0,
      className: json['class_name'] ?? '',
      classCode: json['class_code'] ?? '',
      departmentId: json['department_id'] ?? 0,
      classAdvisorId: json['class_advisor_id'] ?? '',
      batch: json['batch'] ?? '',
      graduationYear: json['graduation_year'] ?? 0,
      lectureHall: json['lecture_hall'] ?? '',
      section: json['section'] ?? '',
      totalStudents: json['total_students_present'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassModel.fromJson(String source) =>
      ClassModel.fromMap(json.decode(source));
}
