import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/exception.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/network/connection_checker.dart';
import 'package:project_pulse/features/main/domain/entities/current_class.dart';
import 'package:project_pulse/features/main/domain/repository/current_class_repository.dart';
import 'package:project_pulse/features/main/data/datasources/current_class_remote_data_source.dart';

class CurrentClassRepositoryImpl implements CurrentClassRepository {
  final CurrentClassRemoteDataSource dataSource;
  final ConnectionChecker connectionChecker;
  CurrentClassRepositoryImpl(
      {required this.dataSource, required this.connectionChecker});

  @override
  Future<Either<Failure, CurrentClass>> getCurrentClasses() async {
    try {
      if (!await connectionChecker.isConnected) {
        print('[from current class repository impl] Internet not available');
        return Left(Failure('Internet not available'));
      }

      final currentClass = await dataSource.getCurrentClasses();
      return Right(currentClass);
    } on ServerException catch (e, stackTrace) {
      debugPrintStack(
        label: e.toString(),
        stackTrace: stackTrace,
      );

      return Left(Failure(e.message));
    }
  }
}
