import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/faculty.dart';
import 'package:project_pulse/features/main/domain/repository/main_repository.dart';

class GetAllFaculties implements UseCase<List<Faculty>, NoParams> {
  MainRepository mainRepository;
  GetAllFaculties({required this.mainRepository});
  @override
  Future<Either<Failure, List<Faculty>>> call(NoParams params) async {
    return await mainRepository.getAllFaculties();
  }
}
