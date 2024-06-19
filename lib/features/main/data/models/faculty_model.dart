import 'dart:convert';

import 'package:project_pulse/features/main/domain/entities/faculty.dart';

class FacultyModel extends Faculty {
  FacultyModel({
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

  FacultyModel copyWith({
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
    return FacultyModel(
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

  /// Returns a `Map<String, dynamic>` map representing the faculty.
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['user_id'] = id;
    map['email'] = email;
    map['username'] = name;
    map['profile_picture'] = profilePhotoUrl;
    map['role'] = role;
    map['phone_number'] = phoneNumber;
    map['register_no'] = registerNo;
    map['roll_no'] = rollNo;
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
  factory FacultyModel.fromMap(Map<String, dynamic> map) {
    return FacultyModel(
      id: map['user_id'] ?? '',
      email: map['email'] ?? '',
      name: map['username'] ?? '',
      profilePhotoUrl: map['profile_picture'] ?? '',
      role: map['role'] ?? '',
      phoneNumber: map['phone_number'] ?? '',
      registerNo: map['register_no'] ?? '',
      rollNo: map['roll_no'] ?? '',
      departmentName: map['department_name'] ?? '',
      section: map['section'] ?? '',
      semester: map['semester'] ?? 0,
      graduationYear: map['graduation_year'] ?? 0,
      facultyId: map['faculty_id'] ?? '',
      designation: map['designation'] ?? '',
      classCode: map['class_code'] ??
          '', //class code applicable for faculty if they are class advisor
      departmentCode: map['department_code'] ?? '',
    );
  }

  /// Converts this instance of `FacultyModel` into a JSON string.
  String toJson() => json.encode(toMap());

  /// Creates a faculty instance from a JSON string.
  factory FacultyModel.fromJson(String source) => FacultyModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );
}
