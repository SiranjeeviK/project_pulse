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

import 'dart:convert';

import 'package:project_pulse/features/main/domain/entities/department.dart';

class DepartmentModel extends Department{

  DepartmentModel({
    required super.departmentId,
    required super.departmentName,
    required super.departmentCode,
    required super.headOfDepartmentId,
    required super.classes,
  });

  @override
  DepartmentModel copyWith({
    int? departmentId,
    String? departmentName,
    String? departmentCode,
    String? headOfDepartmentId,
    List<String>? classes,
  }) {
    return DepartmentModel(
      departmentId: departmentId ?? this.departmentId,
      departmentName: departmentName ?? this.departmentName,
      departmentCode: departmentCode ?? this.departmentCode,
      headOfDepartmentId: headOfDepartmentId ?? this.headOfDepartmentId,
      classes: classes ?? this.classes,
    );
  }

  /// Returns a `Map<String, dynamic>` map representing the user.
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['department_id'] = departmentId;
    map['department_name'] = departmentName;
    map['department_code'] = departmentCode;
    map['head_of_department_id'] = headOfDepartmentId;
    map['classes'] = classes;
    return map;
  }

  /// Creates a user instance from a `Map<String, dynamic>`.
  factory DepartmentModel.fromMap(Map<String, dynamic> map) {
    return DepartmentModel(
      departmentId: map['department_id'] ?? 0,
      departmentName: map['department_name'] ??'',
      departmentCode: map['department_code'] ??'',
      headOfDepartmentId: map['head_of_department_id'] ??'',
      classes: map['classes'] ??[],
    );
  }

  /// Converts this instance of `DepartmentModel` into a JSON string.
  String toJson() => json.encode(toMap());

}