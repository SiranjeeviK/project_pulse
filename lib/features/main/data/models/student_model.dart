import 'dart:convert';

import 'package:project_pulse/features/main/domain/entities/student.dart';

class StudentModel extends Student {
  StudentModel({
    required super.id,
    required super.email,
    required super.name,
    required super.profilePhotoUrl,
    required super.role,
    required super.phoneNumber,
    required super.registerNo,
    required super.rollNo,
    required super.departmentName,
    required super.section,
    required super.semester,
    required super.graduationYear,
    required super.facultyId,
    required super.designation,
    required super.classCode,
    required super.departmentCode,
  });

  StudentModel copyWith({
    String? id,
    String? email,
    String? name,
    String? profilePhotoUrl,
    String? role,
    String? phoneNumber,
    String? registerNo,
    String? rollNo,
    String? departmentName,
    String? section,
    int? semester,
    int? graduationYear,
    String? facultyId,
    String? designation,
    String? classCode,
    String? departmentCode,
  }) {
    return StudentModel(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      profilePhotoUrl: profilePhotoUrl ?? this.profilePhotoUrl,
      role: role ?? this.role,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      registerNo: registerNo ?? this.registerNo,
      rollNo: rollNo ?? this.rollNo,
      departmentName: departmentName ?? this.departmentName,
      section: section ?? this.section,
      semester: semester ?? this.semester,
      graduationYear: graduationYear ?? this.graduationYear,
      facultyId: facultyId ?? this.facultyId,
      designation: designation ?? this.designation,
      classCode: classCode ?? this.classCode,
      departmentCode: departmentCode ?? this.departmentCode,
    );
  }

  /// Returns a `Map<String, dynamic>` map representing the student.
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['student_id'] = id;
    map['email'] = email;
    map['username'] = name;
    map['profile_picture'] = profilePhotoUrl;
    map['role'] = role;
    map['phone_number'] = phoneNumber;
    map['register_number'] = registerNo;
    map['roll_number'] = rollNo;
    map['department_name'] = departmentName;
    map['section'] = section;
    map['semester'] = semester;
    map['graduation_year'] = graduationYear;
    map['faculty_id'] = facultyId;
    map['designation'] = designation;
    map['class_code'] = classCode;
    map['department_code'] = departmentCode;
    return map;
  }

  /// Creates a faculty instance from a `Map<String, dynamic>`.
  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      id: map['student_id'] ?? '',
      email: map['email'] ?? '',
      name: map['username'] ?? '',
      profilePhotoUrl: map['profile_picture'] ?? '',
      role: map['role'] ?? '',
      phoneNumber: map['phone_number'] ?? '',
      registerNo: map['register_number'] ?? '',
      rollNo: map['roll_number'] ?? '',
      departmentName: map['department_name'] ?? '',
      section: map['section'] ?? '',
      semester: map['semester'] ?? 0,
      graduationYear: map['graduation_year'] ?? 0,
      facultyId: map['faculty_id'] ?? '',
      designation: map['designation'] ?? '',
      classCode: map['class_code'] ?? '',
      departmentCode: map['department_code'] ?? '',
    );
  }

  /// Converts this instance of `FacultyModel` into a JSON string.
  String toJson() => json.encode(toMap());

  /// Creates a faculty instance from a JSON string.
  factory StudentModel.fromJson(String source) => StudentModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );
}
