import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/attendance/domain/entities/batch.dart';
import 'package:project_pulse/features/attendance/domain/repository/attendance_repository.dart';

class GetBatchList implements UseCase<List<Batch>, NoParams> {
  final AttendanceRepository attendanceRepository;

  GetBatchList({required this.attendanceRepository});
  @override
  Future<Either<Failure, List<Batch>>> call(params) async {
    return await attendanceRepository.getBatchList();
  }
}

class BatchListParams {}
