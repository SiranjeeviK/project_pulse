// create table
//   public.courses (
//     course_id uuid not null default gen_random_uuid (),
//     course_name text not null,
//     course_code text not null,
//     description text null,
//     teacher_id uuid null,
//     semester integer null,
//     "isLab" boolean null default false,
//     "isAdditional" boolean null default false,
//     constraint courses_pkey primary key (course_id),
//     constraint courses_course_code_key unique (course_code),
//     constraint courses_teacher_id_fkey foreign key (teacher_id) references faculty (faculty_id)
//   ) tablespace pg_default;

class Course {
  final String courseId;
  final String courseName;
  final String courseCode;
  final String description;
  final String teacherId;
  final int semester;
  final bool isLab;
  final bool isAdditional;

  Course({
    required this.courseId,
    required this.courseName,
    required this.courseCode,
    required this.description,
    required this.teacherId,
    required this.semester,
    required this.isLab,
    required this.isAdditional,
  });

  Course copyWith({
    String? courseId,
    String? courseName,
    String? courseCode,
    String? description,
    String? teacherId,
    int? semester,
    bool? isLab,
    bool? isAdditional,
  }) {
    return Course(
      courseId: courseId ?? this.courseId,
      courseName: courseName ?? this.courseName,
      courseCode: courseCode ?? this.courseCode,
      description: description ?? this.description,
      teacherId: teacherId ?? this.teacherId,
      semester: semester ?? this.semester,
      isLab: isLab ?? this.isLab,
      isAdditional: isAdditional ?? this.isAdditional,
    );
  }
}