import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/error/failure.dart';
import 'package:project_pulse/core/usecase/usecase.dart';
import 'package:project_pulse/features/main/domain/entities/course.dart';
import 'package:project_pulse/features/main/domain/repository/main_repository.dart';

class GetAllCoursesByClassCode implements UseCase<List<Course>, CourseSearchParams> {
  MainRepository mainRepository;
  GetAllCoursesByClassCode({required this.mainRepository});

  @override
  Future<Either<Failure, List<Course>>> call(CourseSearchParams params) async {
    return await mainRepository.getAllCoursesByClassCode(params.classCode??'');
  }
}

class CourseSearchParams {
  String? classCode;
  String? departmentId;
  CourseSearchParams({this.classCode, this.departmentId});
}
