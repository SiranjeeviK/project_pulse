import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/attendance/domain/entities/department.dart';
import 'package:project_pulse/features/attendance/domain/repository/attendance_repository.dart';

class GetDepartmentList implements UseCase<List<Department>, NoParams> {
  final AttendanceRepository repository;

  GetDepartmentList({required this.repository});

  @override
  Future<Either<Failure, List<Department>>> call(NoParams params) async {
    return await repository.getDepartmentList();
  }
}