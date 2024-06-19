
import 'package:project_pulse/core/common/entities/user.dart';

class Student extends User {
  Student({
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
  bool get isStudent => true;

  @override
  bool get isFaculty => false;

  @override
  String toString() {
    return 'Student(id: $id, email: $email, name: $name, profilePhotoUrl: $profilePhotoUrl, role: $role, phoneNumber: $phoneNumber, registerNo: $registerNo, rollNo: $rollNo, departmentName: $departmentName, section: $section, semester: $semester, graduationYear: $graduationYear)';
  }

  // Returns the number of years until the student's graduation.
  int get currentYear => graduationYear - DateTime.now().year;
}
