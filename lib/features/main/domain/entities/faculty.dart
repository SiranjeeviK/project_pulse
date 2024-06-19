
import 'package:project_pulse/core/common/entities/user.dart';

class Faculty extends User {
  Faculty({
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

  @override
  bool get isFaculty => true;

  @override
  bool get isStudent => false;

  @override
  String toString() {
    return 'Faculty(id: $id, email: $email, name: $name, profilePhotoUrl: $profilePhotoUrl, role: $role, phoneNumber: $phoneNumber, facultyId: $facultyId, departmentName: $departmentName, designation: $designation)';
  }
}
