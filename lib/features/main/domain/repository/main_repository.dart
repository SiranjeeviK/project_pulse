import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/features/main/domain/entities/batch.dart';
import 'package:project_pulse/features/main/domain/entities/class.dart';
import 'package:project_pulse/features/main/domain/entities/course.dart';
import 'package:project_pulse/features/main/domain/entities/department.dart';
import 'package:project_pulse/features/main/domain/entities/faculty.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';


abstract interface class MainRepository {
  Future<Either<Failure, List<Student>>> getAllStudents();
  Future<Either<Failure, List<Student>>> getAllStudentsByClassCode(String classCode);
  Future<Either<Failure, List<Course>>> getAllCourses();
  Future<Either<Failure, List<Course>>> getAllCoursesByClassCode(String classCode);
  Future<Either<Failure, List<Faculty>>> getAllFaculties();
  Future<Either<Failure, List<Batch>>> getAllBatches();
  Future<Either<Failure, List<Department>>> getAllDepartments();
  Future<Either<Failure, List<Class>>> getAllClasses();
}
