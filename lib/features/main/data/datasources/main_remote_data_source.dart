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
      final response = await supabaseClient.from('batches').select();
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
    try {
      final response = await supabaseClient.from('students').select();
      List<StudentModel> studentList = [];
      studentList = response.map((e) => StudentModel.fromMap(e)).toList();
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
      return classList;
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
