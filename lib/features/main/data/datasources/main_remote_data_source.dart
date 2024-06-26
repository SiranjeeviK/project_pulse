import 'package:project_pulse/core/error/exception.dart';
import 'package:project_pulse/features/main/data/models/batch_model.dart';
import 'package:project_pulse/features/main/data/models/class_model.dart';
import 'package:project_pulse/features/main/data/models/course_class_faculty_mapping_model.dart';
import 'package:project_pulse/features/main/data/models/course_model.dart';
import 'package:project_pulse/features/main/data/models/department_model.dart';
import 'package:project_pulse/features/main/data/models/faculty_model.dart';
import 'package:project_pulse/features/main/data/models/student_model.dart';
import 'package:project_pulse/features/main/domain/entities/department.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class MainRemoteDataSource {
  Future<List<BatchModel>> getAllBatches();

  /// The following methods are [CourseModel] related
  Future<List<CourseModel>> getAllCourses();
  Future<List<CourseModel>> getAllCoursesByClassCode(String classCode);

  /// The following methods are [DepartmentModel] related
  Future<List<Department>> getAllDepartments();

  /// The following methods are [FacultyModel] related
  Future<List<FacultyModel>> getAllFaculties();

  /// The following methods are [ClassModel] related
  Future<List<ClassModel>> getAllClasses();

  /// The following methods are [StudentModel] related
  Future<List<StudentModel>> getAllStudents();
  Future<List<StudentModel>> getAllStudentsByClassCode(String classCode);

  /// The following methods are [CourseClassFacultyMappingModel] related
  Future<List<CourseClassFacultyMappingModel>>
      getAllCourseClassFacultyMappings();
  Future<List<CourseClassFacultyMappingModel>>
      getCourseClassFacultyMappingByClassCode(String classCode);
  Future<List<CourseClassFacultyMappingModel>>
      getCourseClassFacultyMappingByCourseCode(String courseCode);
  Future<List<CourseClassFacultyMappingModel>>
      getCourseClassFacultyMappingByFacultyId(String facultyId);
  Future<CourseClassFacultyMappingModel>
      getCourseClassFacultyMappingByMappingId(int mappingId);
  Future<CourseClassFacultyMappingModel>
      getCourseClassFacultyMappingByCourseCodeAndClassCode(
          String courseCode, String classCode);
  Future<CourseClassFacultyMappingModel>
      getCourseClassFacultyMappingByCourseCodeAndFacultyId(
          String courseCode, String facultyId);
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

  // create table
  // public.courses (
  //   course_id uuid not null default gen_random_uuid (),
  //   course_name text not null,
  //   course_code text not null,
  //   description text null,
  //   "isLab" boolean null default false,
  //   "isAdditional" boolean null default false,
  //   constraint courses_pkey primary key (course_id),
  //   constraint courses_course_code_key unique (course_code)
  // ) tablespace pg_default;

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
  Future<List<CourseModel>> getAllCoursesByClassCode(String classCode) async {
    // get_courses_for_class_code
    try {
      print('[from getAllCoursesByClassCode] classCode: $classCode');
      if (classCode == '') {
        throw const ServerException('Class code cannot be empty');
      }
      final response = await supabaseClient.rpc('get_courses_for_class_code',
          params: {'class_code_param': classCode});
      print(response);
      List<CourseModel> courseList = [];
      courseList =
          response.map<CourseModel>((e) => CourseModel.fromMap(e)).toList();

      return courseList;
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<DepartmentModel>> getAllDepartments() async {
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
    // create table
    //   public.faculty (
    //     faculty_id uuid not null,
    //     department_name text null,
    //     designation text null default '''Not Set'''::text,
    //     handling_class text null, //FIXME: do we need to remove this?
    //     department_code text null,
    //     constraint faculty_pkey primary key (faculty_id),
    //     constraint faculty_department_code_fkey foreign key (department_code) references departments (department_code) on update cascade on delete restrict,
    //     constraint faculty_department_name_fkey foreign key (department_name) references departments (department_name) on update cascade on delete restrict,
    //     constraint faculty_faculty_id_fkey foreign key (faculty_id) references users (user_id) on update cascade on delete restrict,
    //     constraint faculty_handling_class_fkey foreign key (handling_class) references classes (class_code) on update cascade on delete restrict
    //   ) tablespace pg_default;
    try {
      final response = await supabaseClient.rpc('get_faculty_user_info');
      // final response = await supabaseClient.from('faculties').select(
      //     'faculty_id, department_name, designation, handling_class, department_code, users!inner(user_id, username, email, profile_picture, role, phone_number)');

      List<FacultyModel> facultyList = [];
      facultyList =
          response.map<FacultyModel>((e) => FacultyModel.fromMap(e)).toList();
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
  Future<List<StudentModel>> getAllStudentsByClassCode(String classCode) async {
    // get_students_with_user_info_by_class_code
    try {
      final response = await supabaseClient.rpc(
          'get_students_with_user_info_by_class_code',
          params: {'class_code_param': classCode});
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

  @override
  Future<List<CourseClassFacultyMappingModel>>
      getAllCourseClassFacultyMappings() async {
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

    try {
      final response =
          await supabaseClient.from('course_class_faculty_mapping').select();
      List<CourseClassFacultyMappingModel> courseClassFacultyMappingList = [];
      courseClassFacultyMappingList = response
          .map<CourseClassFacultyMappingModel>(
              (e) => CourseClassFacultyMappingModel.fromMap(e))
          .toList();
      return courseClassFacultyMappingList;
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<CourseClassFacultyMappingModel>>
      getCourseClassFacultyMappingByClassCode(String classCode) {
    // TODO: implement getCourseClassFacultyMappingByClassCode
    throw UnimplementedError();
  }

  @override
  Future<List<CourseClassFacultyMappingModel>>
      getCourseClassFacultyMappingByCourseCode(String courseCode) {
    // TODO: implement getCourseClassFacultyMappingByCourseCode
    throw UnimplementedError();
  }

  @override
  Future<List<CourseClassFacultyMappingModel>>
      getCourseClassFacultyMappingByFacultyId(String facultyId) async {
    try {
      final response = await supabaseClient
          .from('course_class_faculty_mapping')
          .select()
          .eq('faculty_id', facultyId);
      List<CourseClassFacultyMappingModel> courseClassFacultyMappingList = [];
      courseClassFacultyMappingList = response
          .map<CourseClassFacultyMappingModel>(
              (e) => CourseClassFacultyMappingModel.fromMap(e))
          .toList();
      return courseClassFacultyMappingList;
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<CourseClassFacultyMappingModel>
      getCourseClassFacultyMappingByMappingId(int mappingId) async {
    try {
      final response = await supabaseClient
          .from('course_class_faculty_mapping')
          .select()
          .eq('mapping_id', mappingId);
      return CourseClassFacultyMappingModel.fromMap(response.first);
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<CourseClassFacultyMappingModel>
      getCourseClassFacultyMappingByCourseCodeAndClassCode(
          String courseCode, String classCode) async {
    try {
      final response = await supabaseClient
          .from('course_class_faculty_mapping')
          .select()
          .eq('course_code', courseCode)
          .eq('class_code', classCode);
      return CourseClassFacultyMappingModel.fromMap(response.first);
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<CourseClassFacultyMappingModel>
      getCourseClassFacultyMappingByCourseCodeAndFacultyId(
          String courseCode, String facultyId) async {
    try {
      final response = await supabaseClient
          .from('course_class_faculty_mapping')
          .select()
          .eq('course_code', courseCode)
          .eq('faculty_id', facultyId);
      return CourseClassFacultyMappingModel.fromMap(response.first);
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
