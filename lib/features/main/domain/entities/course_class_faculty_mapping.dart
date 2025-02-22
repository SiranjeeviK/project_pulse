// create table
//   public.course_class_faculty_mapping (
//     course_code text not null,
//     class_code text not null,
//     faculty_id uuid not null,
//     mapping_id integer generated by default as identity,
//     semester integer null,
//     constraint course_class_faculty_mapping_pkey primary key (mapping_id),
//     constraint course_class_faculty_mapping_class_code_fkey foreign key (class_code) references classes (class_code) on update cascade on delete cascade,
//     constraint course_class_faculty_mapping_course_code_fkey foreign key (course_code) references courses (course_code) on update cascade on delete cascade,
//     constraint course_class_faculty_mapping_faculty_id_fkey foreign key (faculty_id) references faculty (faculty_id) on update cascade on delete cascade
//   ) tablespace pg_default;

class CourseClassFacultyMapping {
  final int mappingId;
  final String courseCode;
  final String classCode;
  final String facultyId;
  final int semester;
  // additonal fields
  String? courseName;
  String? className;

  CourseClassFacultyMapping({
    required this.mappingId,
    required this.courseCode,
    required this.classCode,
    required this.facultyId,
    required this.semester,
    this.courseName,
    this.className,
  });

  CourseClassFacultyMapping copyWith({
    int? mappingId,
    String? courseCode,
    String? classCode,
    String? facultyId,
    int? semester,
    String? courseName,
    String? className,
  }) {
    return CourseClassFacultyMapping(
      courseCode: courseCode ?? this.courseCode,
      classCode: classCode ?? this.classCode,
      facultyId: facultyId ?? this.facultyId,
      mappingId: mappingId ?? this.mappingId,
      semester: semester ?? this.semester,
      courseName: courseName ?? this.courseName,
      className: className ?? this.className,
    );
  }

  @override
  String toString() {
    return 'CourseClassFacultyMapping( mappingId: $mappingId, courseCode: $courseCode, classCode: $classCode, facultyId: $facultyId, mappingId: $mappingId, semester: $semester,\n courseName: $courseName, className: $className\n)';
  }
}
