import 'dart:convert';

import 'package:project_pulse/core/common/entities/user.dart';

/// Represents a user model that extends the base [User] class.
/// The [UserModel] class is used to represent a [User] entity in the application. Used in [AuthRepositoryImpl] to get the current user.
///
/// ***Liskov Substitution Principle***: Entities should be substitutable with their subtypes.
/// In this case, [UserModel] should be substitutable with [User].
///
/// It is a subclass of the [User] class.
/// The [UserModel] class is used to store user data and perform operations on user data.
///
class UserModel extends User {
  UserModel({
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

  UserModel copyWith({
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
    return UserModel(
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

  /// Returns a `Map<String, dynamic>` map representing the user.
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

  /// Creates a user instance from a `Map<String, dynamic>`.
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
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

  /// Converts this instance of `UserModel` into a JSON string.
  String toJson() => json.encode(toMap());

  /// Creates a user instance from a JSON string.
  factory UserModel.fromJson(String source) => UserModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );
}

// class StudentModel extends UserModel {
//   final String registerNo;
//   final String rollNo;
//   final String department;
//   final String section;
//   final int semester;
//   final int graduationYear;

//   StudentModel({
//     required super.id,
//     required super.email,
//     required super.name,
//     required super.profilePhotoUrl,
//     required super.role,
//     required super.phoneNumber,
//     required this.registerNo,
//     required this.rollNo,
//     required this.department,
//     required this.section,
//     required this.semester,
//     required this.graduationYear,
//   });

//   @override
//   StudentModel copyWith({
//     String? id,
//     String? email,
//     String? name,
//     String? profilePhotoUrl,
//     String? role,
//     String? phoneNumber,
//     String? registerNo,
//     String? rollNo,
//     String? department,
//     String? section,
//     String? semester,
//     int? graduationYear,
//   }) {
//     return StudentModel(
//       id: id ?? this.id,
//       email: email ?? this.email,
//       name: name ?? this.name,
//       profilePhotoUrl: profilePhotoUrl ?? this.profilePhotoUrl,
//       role: role ?? this.role,
//       phoneNumber: phoneNumber ?? this.phoneNumber,
//       registerNo: registerNo ?? this.registerNo,
//       rollNo: rollNo ?? this.rollNo,
//       department: department ?? this.department,
//       section: section ?? this.section,
//       semester: semester ?? this.semester,
//       graduationYear: graduationYear ?? this.graduationYear,
//     );
//   }

//   /// Returns a `Map<String, dynamic>` map representing the student.
//   @override
//   Map<String, dynamic> toMap() {
//     final map = super.toMap();
//     map['register_no'] = registerNo;
//     map['roll_no'] = rollNo;
//     map['department'] = department;
//     map['section'] = section;
//     map['semester'] = semester;
//     map['graduation_year'] = graduationYear;
//     return map;
//   }

//   /// Creates a student instance from a `Map<String, dynamic>`.
//   factory StudentModel.fromMap(Map<String, dynamic> map) {
//     return StudentModel(
//       id: map['user_id'] ?? '',
//       email: map['email'] ?? '',
//       name: map['username'] ?? '',
//       profilePhotoUrl: map['profile_picture'] ?? '',
//       role: map['role'] ?? '',
//       phoneNumber: map['phone_number'] ?? '',
//       registerNo: map['register_no'] ?? '',
//       rollNo: map['roll_no'] ?? '',
//       department: map['department'] ?? '',
//       section: map['section'] ?? '',
//       semester: map['semester'] ?? '',
//       graduationYear: map['graduation_year'] ?? 0, //FIXME: check this
//     );
//   }
// }

// class FacultyModel extends UserModel implements User {
//   final String facultyId;
//   final String department;
//   final String designation;

//   FacultyModel({
//     required super.id,
//     required super.email,
//     required super.name,
//     required super.profilePhotoUrl,
//     required super.role,
//     required super.phoneNumber,
//     required this.facultyId,
//     required this.department,
//     required this.designation,
//   });

//   @override
//   FacultyModel copyWith({
//     String? id,
//     String? email,
//     String? name,
//     String? profilePhotoUrl,
//     String? role,
//     String? phoneNumber,
//     String? facultyId,
//     String? department,
//     String? designation,
//   }) {
//     return FacultyModel(
//       id: id ?? this.id,
//       email: email ?? this.email,
//       name: name ?? this.name,
//       profilePhotoUrl: profilePhotoUrl ?? this.profilePhotoUrl,
//       role: role ?? this.role,
//       phoneNumber: phoneNumber ?? this.phoneNumber,
//       facultyId: facultyId ?? this.facultyId,
//       department: department ?? this.department,
//       designation: designation ?? this.designation,
//     );
//   }

//   /// Returns a `Map<String, dynamic>` map representing the faculty.
//   @override
//   Map<String, dynamic> toMap() {
//     final map = super.toMap();
//     map['faculty_id'] = facultyId;
//     map['department'] = department;
//     map['designation'] = designation;
//     return map;
//   }

//   /// Creates a faculty instance from a `Map<String, dynamic>`.
//   factory FacultyModel.fromMap(Map<String, dynamic> map) {
//     return FacultyModel(
//       id: map['user_id'] ?? '',
//       email: map['email'] ?? '',
//       name: map['username'] ?? '',
//       profilePhotoUrl: map['profile_picture'] ?? '',
//       role: map['role'] ?? '',
//       phoneNumber: map['phone_number'] ?? '',
//       facultyId: map['faculty_id'] ?? '',
//       department: map['department'] ?? '',
//       designation: map['designation'] ?? '',
//     );
//   }
// }
