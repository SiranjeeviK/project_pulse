import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/attendance/domain/entities/class.dart';
import 'package:project_pulse/features/attendance/domain/repository/attendance_repository.dart';

class GetClassList implements UseCase<List<Class>, NoParams> {
  AttendanceRepository attendanceRepository;
  GetClassList({required this.attendanceRepository});
  @override
  Future<Either<Failure, List<Class>>> call(NoParams params) async {
    // TODO: implement call with params
    return await attendanceRepository.getClassesList(departmentCode: null);
  }
}
