import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/course.dart';
import 'package:project_pulse/features/main/domain/repository/main_repository.dart';

class GetAllCourses implements UseCase<List<Course>, NoParams> {
  MainRepository mainRepository;
  GetAllCourses({required this.mainRepository});

  @override
  Future<Either<Failure, List<Course>>> call(NoParams params) async {
    return await mainRepository.getAllCourses();
  }
}
