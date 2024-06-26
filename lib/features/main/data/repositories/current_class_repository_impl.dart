import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/exception.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/network/connection_checker.dart';
import 'package:project_pulse/features/main/domain/entities/class_schedule.dart';
import 'package:project_pulse/features/main/domain/repository/current_class_repository.dart';
import 'package:project_pulse/features/main/data/datasources/current_class_remote_data_source.dart';

class CurrentClassRepositoryImpl implements CurrentClassRepository {
  final CurrentClassRemoteDataSource dataSource;
  final ConnectionChecker connectionChecker;
  CurrentClassRepositoryImpl(
      {required this.dataSource, required this.connectionChecker});

  @override
  Future<Either<Failure, List<ClassSchedule>>> getCurrentClasses(
      String? classCode) async {
    try {
      if (!await connectionChecker.isConnected) {
        print('[from current class repository impl] Internet not available');
        return Left(Failure('Internet not available'));
      }

      // final currentClass = await dataSource.getCurrentClasses();
      final currentClass =
          await dataSource.getCurrentClassesWithClassCode(classCode);
      return Right(currentClass);
    } on ServerException catch (e, stackTrace) {
      debugPrintStack(
        label: e.toString(),
        stackTrace: stackTrace,
      );

      return Left(Failure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<ClassSchedule>>>
      getUpcomingForAllClasses() async {
    try {
      if (!await connectionChecker.isConnected) {
        print('[from current class repository impl] Internet not available');
        return Left(Failure('Internet not available'));
      }

      final upcomingClasses = await dataSource.getCurrentClasses();
      return Right(upcomingClasses);
    } on ServerException catch (e, stackTrace) {
      debugPrintStack(
        label: e.toString(),
        stackTrace: stackTrace,
      );

      return Left(Failure(e.message));
    }
  }
}
