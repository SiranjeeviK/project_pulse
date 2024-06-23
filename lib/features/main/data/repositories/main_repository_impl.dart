import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/constants/constants.dart';
import 'package:project_pulse/core/error/exception.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/network/connection_checker.dart';
import 'package:project_pulse/features/main/domain/entities/batch.dart';
import 'package:project_pulse/features/main/domain/entities/class.dart';
import 'package:project_pulse/features/main/domain/entities/course.dart';
import 'package:project_pulse/features/main/domain/entities/department.dart';
import 'package:project_pulse/features/main/domain/entities/faculty.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';
import 'package:project_pulse/features/main/domain/repository/main_repository.dart';
import 'package:project_pulse/features/main/data/datasources/main_remote_data_source.dart';

class MainRepositoryImpl implements MainRepository {
  final MainRemoteDataSource mainRemoteDataSource;
  final ConnectionChecker connectionChecker;

  MainRepositoryImpl(
      {required this.mainRemoteDataSource, required this.connectionChecker});

  @override
  Future<Either<Failure, List<Batch>>> getAllBatches() async {
    if (await connectionChecker.isConnected) {
      try {
        final batchList = await mainRemoteDataSource.getAllBatches();
        return Right(batchList);
      } on ServerException catch (e) {
        return Left(Failure(e.message));
      }
    } else {
      return Left(Failure(Constants.noConnectionErrorMessage));
    }
  }

  @override
  Future<Either<Failure, List<Course>>> getAllCourses() async {
    if (await connectionChecker.isConnected) {
      try {
        final courseList = await mainRemoteDataSource.getAllCourses();
        return Right(courseList);
      } on ServerException catch (e) {
        return Left(Failure(e.message));
      }
    } else {
      return Left(Failure(Constants.noConnectionErrorMessage));
    }
  }

  @override
  Future<Either<Failure, List<Department>>> getAllDepartments() async {
    if (await connectionChecker.isConnected) {
      try {
        final departmentList = await mainRemoteDataSource.getAllDepartments();
        return Right(departmentList);
      } on ServerException catch (e) {
        return Left(Failure(e.message));
      }
    } else {
      return Left(Failure(Constants.noConnectionErrorMessage));
    }
  }

  @override
  Future<Either<Failure, List<Faculty>>> getAllFaculties() async {
    if (await connectionChecker.isConnected) {
      try {
        final facultyList = await mainRemoteDataSource.getAllFaculties();
        return Right(facultyList);
      } on ServerException catch (e) {
        return Left(Failure(e.message));
      }
    } else {
      return Left(Failure(Constants.noConnectionErrorMessage));
    }
  }

  @override
  Future<Either<Failure, List<Student>>> getAllStudents() async {
    if (await connectionChecker.isConnected) {
      try {
        final studentList = await mainRemoteDataSource.getAllStudents();
        return Right(studentList);
      } on ServerException catch (e) {
        return Left(Failure(e.message));
      }
    } else {
      return Left(Failure(Constants.noConnectionErrorMessage));
    }
  }

  @override
  Future<Either<Failure, List<Class>>> getAllClasses() async {
    if (await connectionChecker.isConnected) {
      try {
        final classList = await mainRemoteDataSource.getAllClasses();
        return Right(classList);
      } on ServerException catch (e) {
        return Left(Failure(e.message));
      }
    } else {
      return Left(Failure(Constants.noConnectionErrorMessage));
    }
  }

  @override
  Future<Either<Failure, List<Student>>> getAllStudentsByClassCode(
      String classCode) async {
    if (await connectionChecker.isConnected) {
      try {
        final studentList =
            await mainRemoteDataSource.getAllStudentsByClassCode(classCode);
        return Right(studentList);
      } on ServerException catch (e) {
        return Left(Failure(e.message));
      }
    } else {
      return Left(Failure(Constants.noConnectionErrorMessage));
    }
  }
}
