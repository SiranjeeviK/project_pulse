import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/class.dart';
import 'package:project_pulse/features/main/domain/repository/main_repository.dart';

class GetAllClasses implements UseCase<List<Class>, NoParams> {
  MainRepository mainRepository;
  GetAllClasses({required this.mainRepository});
  @override
  Future<Either<Failure, List<Class>>> call(NoParams params) async {
    return await mainRepository.getAllClasses();
  }
}
