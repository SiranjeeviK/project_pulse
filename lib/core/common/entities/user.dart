/// Represents a user entity. Used in [AuthRepository] to get the current user. Moved from domain to the common folder to be used in multiple features.
/// The [id], [email], and [name] properties are required.
/// ***Entities*** are the core of the application. They are the objects that represent the data that the application operates on.
/// ***Liskov Substitution Principle***: Entities should be substitutable with their subtypes.ie, [UserModel] should be substitutable with [User]
class User {
  final String id;
  final String email;
  final String name;
  final String profilePhotoUrl;
  final String role;
  final String phoneNumber;

  final String registerNo;
  final String rollNo;
  final String department;
  final String section;
  final String semester;
  final int graduationYear;

  final String facultyId;
  final String designation;

  /// Constructs a new User instance with the specified [id], [email], and [name].
  User({
    required this.id,
    required this.email,
    required this.name,
    required this.profilePhotoUrl,
    required this.role,
    required this.phoneNumber,
    required this.registerNo,
    required this.rollNo,
    required this.department,
    required this.section,
    required this.semester,
    required this.graduationYear,
    required this.facultyId,
    required this.designation,
  });

  bool get isStudent => role == 'Student';
  bool get isFaculty => !isStudent;

  // String get registerNo => runtimeType == Student ? (this as Student).registerNo;
  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name, profilePhotoUrl: $profilePhotoUrl, role: $role, phoneNumber: $phoneNumber, registerNo: $registerNo, rollNo: $rollNo, department: $department, section: $section, semester: $semester, graduationYear: $graduationYear, facultyId: $facultyId, designation: $designation)';
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
        other.department == department &&
        other.section == section &&
        other.semester == semester &&
        other.graduationYear == graduationYear &&
        other.facultyId == facultyId &&
        other.designation == designation;
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
        department.hashCode ^
        section.hashCode ^
        semester.hashCode ^
        graduationYear.hashCode ^
        facultyId.hashCode ^
        designation.hashCode;
  }
}

// This is just a holder, UserModel is the one that fetch data from server in form of JSON

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
    required super.department,
    required super.section,
    required super.semester,
    required super.graduationYear,
    required super.facultyId,
    required super.designation,
  });

  @override
  bool get isStudent => true;

  @override
  bool get isFaculty => false;

  @override
  String toString() {
    return 'Student(id: $id, email: $email, name: $name, profilePhotoUrl: $profilePhotoUrl, role: $role, phoneNumber: $phoneNumber, registerNo: $registerNo, rollNo: $rollNo, department: $department, section: $section, semester: $semester, graduationYear: $graduationYear)';
  }

  // current year
  int get currentYear => graduationYear - DateTime.now().year;
}

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
    required super.department,
    required super.section,
    required super.semester,
    required super.graduationYear,
    required super.facultyId,
    required super.designation,
  });

  @override
  bool get isFaculty => true;

  @override
  bool get isStudent => false;

  @override
  String toString() {
    return 'Faculty(id: $id, email: $email, name: $name, profilePhotoUrl: $profilePhotoUrl, role: $role, phoneNumber: $phoneNumber, facultyId: $facultyId, department: $department, designation: $designation)';
  }
}
