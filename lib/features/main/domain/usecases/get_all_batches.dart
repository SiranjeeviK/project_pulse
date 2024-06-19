import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/batch.dart';
import 'package:project_pulse/features/main/domain/repository/main_repository.dart';

class GetAllBatches implements UseCase<List<Batch>, NoParams> {
  final MainRepository mainRepository;

  GetAllBatches({required this.mainRepository});
  @override
  Future<Either<Failure, List<Batch>>> call(params) async {
    return await mainRepository.getAllBatches();
  }
}

class BatchListParams {}
