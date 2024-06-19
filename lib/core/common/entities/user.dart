/// Represents a user entity. Used in [AuthRepository] to get the current user. Moved from the domain to the common folder to be used in multiple features.
/// The [id], [email], and [name] properties are required.
/// ***Entities*** are the core of the application. They are the objects that represent the data that the application operates on.
/// ***Liskov Substitution Principle***: Entities should be substitutable with their subtypes, i.e., [UserModel] should be substitutable with [User].
class User {
  final String id; // The unique identifier of the user.
  final String email; // The email address of the user.
  final String name; // The name of the user.
  final String profilePhotoUrl; // The URL of the user's profile photo.
  final String role; // The role of the user (e.g., "Student", "Faculty").
  final String phoneNumber; // The phone number of the user.

  final String registerNo; // The registration number of the user (for students).
  final String rollNo; // The roll number of the user (for students).
  final String departmentName; // The name of the department the user belongs to.
  final String section; // The section the user belongs to.
  final int semester; // The current semester of the user (for students).
  final String classCode; // The code of the user's class (for students).
  final int graduationYear; // The year the user is expected to graduate (for students).

  final String facultyId; // The ID of the faculty member (for faculty).
  final String designation; // The designation of the faculty member (e.g., "HOD").
  final String departmentCode; // The code of the department the faculty member belongs to.

  /// Constructs a new User instance with the given values. The [id], [email], [name], [profilePhotoUrl], [role], [phoneNumber], [registerNo], [rollNo], [departmentName], [section], [semester], [classCode], [graduationYear], [facultyId], [designation], and [departmentCode] arguments must not be null.
  User({
    required this.id,
    required this.email,
    required this.name,
    required this.profilePhotoUrl,
    required this.role,
    required this.phoneNumber,
    required this.registerNo,
    required this.rollNo,
    required this.departmentName,
    required this.section,
    required this.semester,
    required this.classCode,
    required this.graduationYear,
    required this.facultyId,
    required this.designation,
    required this.departmentCode,
  });

  bool get isStudent => role == 'Student'; // Returns true if the user is a student.
  bool get isFaculty => !isStudent; // Returns true if the user is a faculty member.
  bool get isHOD => isFaculty && designation == 'HOD'; // Returns true if the user is a faculty member and has the designation of "HOD".

  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name, profilePhotoUrl: $profilePhotoUrl, role: $role, phoneNumber: $phoneNumber, registerNo: $registerNo, rollNo: $rollNo, departmentName: $departmentName, section: $section, semester: $semester, classCode: $classCode, graduationYear: $graduationYear, facultyId: $facultyId, designation: $designation, departmentCode: $departmentCode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.email == email &&
        other.name == name &&
        other.profilePhotoUrl == profilePhotoUrl &&
        other.role == role &&
        other.phoneNumber == phoneNumber &&
        other.registerNo == registerNo &&
        other.rollNo == rollNo &&
        other.departmentName == departmentName &&
        other.section == section &&
        other.semester == semester &&
        other.classCode == classCode &&
        other.graduationYear == graduationYear &&
        other.facultyId == facultyId &&
        other.designation == designation &&
        other.departmentCode == departmentCode;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        email.hashCode ^
        name.hashCode ^
        profilePhotoUrl.hashCode ^
        role.hashCode ^
        phoneNumber.hashCode ^
        registerNo.hashCode ^
        rollNo.hashCode ^
        departmentName.hashCode ^
        section.hashCode ^
        semester.hashCode ^
        classCode.hashCode ^
        graduationYear.hashCode ^
        facultyId.hashCode ^
        designation.hashCode ^
        departmentCode.hashCode;
  }
}

// This is just a holder, UserModel is the one that fetches data from the server in the form of JSON.
