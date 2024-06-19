// create table
//   public.departments (
//     department_id bigint generated always as identity,
//     department_name text not null,
//     department_code text not null,
//     head_of_department_id uuid null,
//     classes text[] null,
//     constraint departments_pkey primary key (department_id),
//     constraint departments_department_code_key unique (department_code),
//     constraint departments_department_name_key unique (department_name),
//     constraint departments_head_of_department_id_fkey foreign key (head_of_department_id) references faculty (faculty_id)
//   ) tablespace pg_default;

class Department {
  final int departmentId;
  final String departmentName;
  final String departmentCode;
  final String headOfDepartmentId;
  final List<String> classes;

  Department({
    required this.departmentId,
    required this.departmentName,
    required this.departmentCode,
    required this.headOfDepartmentId,
    required this.classes,
  });

  Department copyWith({
    int? departmentId,
    String? departmentName,
    String? departmentCode,
    String? headOfDepartmentId,
    List<String>? classes,
  }) {
    return Department(
      departmentId: departmentId ?? this.departmentId,
      departmentName: departmentName ?? this.departmentName,
      departmentCode: departmentCode ?? this.departmentCode,
      headOfDepartmentId: headOfDepartmentId ?? this.headOfDepartmentId,
      classes: classes ?? this.classes,
    );
  }
}
