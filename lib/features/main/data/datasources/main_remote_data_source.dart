import 'package:project_pulse/core/error/exception.dart';
import 'package:project_pulse/features/main/data/models/batch_model.dart';
import 'package:project_pulse/features/main/data/models/class_model.dart';
import 'package:project_pulse/features/main/data/models/course_model.dart';
import 'package:project_pulse/features/main/data/models/department_model.dart';
import 'package:project_pulse/features/main/data/models/faculty_model.dart';
import 'package:project_pulse/features/main/data/models/student_model.dart';
import 'package:project_pulse/features/main/domain/entities/department.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class MainRemoteDataSource {
  Future<List<BatchModel>> getAllBatches();
  Future<List<CourseModel>> getAllCourses();
  Future<List<Department>> getAllDepartments();
  Future<List<FacultyModel>> getAllFaculties();
  Future<List<StudentModel>> getAllStudents();
  Future<List<ClassModel>> getAllClasses();
}

class MainRemoteDataSourceImpl implements MainRemoteDataSource {
  final SupabaseClient supabaseClient;

  MainRemoteDataSourceImpl({required this.supabaseClient});

  @override
  Future<List<BatchModel>> getAllBatches() async {
    try {
      final response = await supabaseClient
          .from('batches')
          .select()
          .order('batch_id', ascending: false)
          .limit(4);
      List<BatchModel> batchList = [];
      batchList = response.map((e) => BatchModel.fromMap(e)).toList();
      return batchList;
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<CourseModel>> getAllCourses() async {
    try {
      final response = await supabaseClient.from('courses').select();
      List<CourseModel> courseList = [];
      courseList = response.map((e) => CourseModel.fromMap(e)).toList();
      return courseList;
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<DepartmentModel>> getAllDepartments() async {
    try {
      final response = await supabaseClient.from('departments').select();
      List<DepartmentModel> departmentList = [];
      departmentList = response.map((e) => DepartmentModel.fromMap(e)).toList();
      return departmentList;
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<FacultyModel>> getAllFaculties() async {
    try {
      final response = await supabaseClient.from('faculties').select();
      List<FacultyModel> facultyList = [];
      facultyList = response.map((e) => FacultyModel.fromMap(e)).toList();
      return facultyList;
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<StudentModel>> getAllStudents() async {
//create table
//   public.students (
//     student_id uuid not null,
//     department_name text null,
//     graduation_year integer null,
//     register_number text not null,
//     roll_number text not null,
//     section text null,
//     semester integer null,
//     class_code text null,
//     constraint students_pkey primary key (student_id, register_number, roll_number),
//     constraint students_student_id_key unique (student_id),
//     constraint students_register_number_key unique (register_number),
//     constraint students_roll_number_key unique (roll_number),
//     constraint students_student_id_fkey foreign key (student_id) references users (user_id) on update cascade,
//     constraint students_class_code_fkey foreign key (class_code) references classes (class_code) on update cascade on delete restrict,
//     constraint students_graduation_year_fkey foreign key (graduation_year) references batches (batch_id) on update cascade on delete restrict,
//     constraint students_department_name_fkey foreign key (department_name) references departments (department_name) on update cascade on delete restrict
//   ) tablespace pg_default;

// create trigger update_total_students_trigger
// after insert
// or delete
// or
// update on students for each row
// execute function update_total_students_present ();

// create table
//   public.users (
//     user_id uuid not null,
//     username text null,
//     email text null,
//     password_hash text null,
//     role text null,
//     profile_picture text null,
//     bio text null,
//     phone_number text null,
//     constraint users_pkey primary key (user_id),
//     constraint users_email_key unique (email),
//     constraint users_phone_number_check check ((length(phone_number) < 15))
//   ) tablespace pg_default;

// create trigger insert_faculty_or_students_trigger
// after insert on users for each row
// execute function insert_faculty_or_students ();

// create trigger update_user_name_trigger before insert
// or
// update on users for each row
// execute function update_user_name_from_email ();
    try {
      final response = await supabaseClient.rpc('get_student_user_info');
      // await supabaseClient.from('students').select();

      // final userData = await supabaseClient.from('users').select();
      List<StudentModel> studentList = [];
      studentList =
          response.map<StudentModel>((e) => StudentModel.fromMap(e)).toList();
      return studentList;
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<ClassModel>> getAllClasses() async {
    try {
      final response = await supabaseClient.from('classes').select();
      List<ClassModel> classList = [];
      classList = response.map((e) => ClassModel.fromMap(e)).toList();
      print(classList);
      return classList;
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
