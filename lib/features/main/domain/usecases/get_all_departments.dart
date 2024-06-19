import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/department.dart';
import 'package:project_pulse/features/main/domain/repository/main_repository.dart';

class GetAllDepartments implements UseCase<List<Department>, NoParams> {
  final MainRepository mainRepository;

  GetAllDepartments({required this.mainRepository});

  @override
  Future<Either<Failure, List<Department>>> call(NoParams params) async {
    return await mainRepository.getAllDepartments();
  }
}
