// create table
//   public.classes (
//     class_id bigint generated always as identity,
//     class_name text not null,
//     class_code text not null,
//     department_id bigint null,
//     class_advisor_id uuid null,
//     batch text null,
//     graduation_year integer null,
//     lecture_hall text null,
//     section text null,
//     constraint classes_pkey primary key (class_id, class_code),
//     constraint classes_class_code_key unique (class_code),
//     constraint classes_class_advisor_id_fkey foreign key (class_advisor_id) references faculty (faculty_id),
//     constraint classes_department_id_fkey foreign key (department_id) references departments (department_id),
//     constraint classes_graduation_year_fkey foreign key (graduation_year) references batches (batch_id) on update cascade on delete restrict
//   ) tablespace pg_default;

class Class {
  final int classId;
  final String className;
  final String classCode;
  final int departmentId;
  final String classAdvisorId;
  final String batch;
  final int graduationYear;
  final String lectureHall;
  final String section;
  final int totalStudents;

  Class({
    required this.classId,
    required this.className,
    required this.classCode,
    required this.departmentId,
    required this.classAdvisorId,
    required this.batch,
    required this.graduationYear,
    required this.lectureHall,
    required this.section,
    required this.totalStudents,
  });

  Class copyWith({
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
    return Class(
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

  @override
  String toString() {
    return 'Class(classId: $classId, className: $className, classCode: $classCode, departmentId: $departmentId, classAdvisorId: $classAdvisorId, batch: $batch, graduationYear: $graduationYear, lectureHall: $lectureHall, section: $section, totalStudents: $totalStudents)';
  }
}
