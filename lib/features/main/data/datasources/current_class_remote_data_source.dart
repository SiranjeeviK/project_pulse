import 'package:project_pulse/core/constants/constants.dart';
import 'package:project_pulse/core/error/exception.dart';
import 'package:project_pulse/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:project_pulse/features/main/data/models/class_schedule_model.dart';
import 'package:project_pulse/features/main/data/models/course_class_faculty_mapping_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:project_pulse/core/constants/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class CurrentClassRemoteDataSource {
  Future<List<ClassScheduleModel>> getCurrentClasses();
  Future<List<ClassScheduleModel>> getCurrentClassesWithClassCode(
      String? classCode);
}

class CurrentClassRemoteDataSourceImpl implements CurrentClassRemoteDataSource {
  final SupabaseClient supabaseClient;
  final AuthRemoteDataSource authRemoteDataSource;
  CurrentClassRemoteDataSourceImpl(
      {required this.supabaseClient, required this.authRemoteDataSource});

  @override
  Future<List<ClassScheduleModel>> getCurrentClassesWithClassCode(
      String? classCode) async {
    try {
      if (classCode == null || classCode == '') {
        return [];
      }
      const url = Constants.itDepartmentTimeTableSheet;
      // if (url == '') {
      //   // throw const ServerException('Invalid class code');
      //   // HACK: This is a temporary solution

      // }
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        if (response.body.isEmpty) {
          throw const ServerException('Response body is empty');
        }
        print("The Response got in [CurrentClassRemoteDataSource]:  " +
            response.body);
        List<ClassScheduleModel> list = [];
        Map<String, dynamic> sheetData = json.decode(response.body);

        for (var key in sheetData.keys) {
          if (key.contains("link")) {
            continue;
          }

          List<dynamic> classData = sheetData[key];

          String linkKey = key + "link";
          String timeTableUrl = sheetData[linkKey] ?? '';
          // Assuming classData[1] is the start time and classData[2] is the end time in HH:mm format
          DateTime now = DateTime.now();
          DateTime startTime = DateTime(now.year, now.month, now.day);
          DateTime endTime = DateTime(now.year, now.month, now.day);
          if (classData[1] is String) {
            List<String> startTimeParts = classData[1].split(':');
            startTime = DateTime(now.year, now.month, now.day,
                int.parse(startTimeParts[0]), int.parse(startTimeParts[1]));
          }
          if (classData[2] is String) {
            List<String> endTimeParts = classData[2].split(':');
            endTime = DateTime(now.year, now.month, now.day,
                int.parse(endTimeParts[0]), int.parse(endTimeParts[1]));
          }
          String? courseCode =
              Constants.itbSem4SubjectToCourseCode[classData[0]];

          print("The course code in [CurrentClassRemoteDataSource]:  " +
              courseCode.toString());
          final mapping = await _getMappingId(courseCode, key);
          // final mapping = Constants.freeClassFacultyMapping;

          if (mapping.mappingId == -11) {
            //mapping not found, so dummy data with correct class code
            list.add(Constants.defaultClassSchedule.copyWith(
              classCode: classCode,
            ));
            continue;
          }

          // mapping found
          ClassScheduleModel schedule = ClassScheduleModel(
            classCode: key,
            currentClass: classData[0] ?? '-',
            currentClassStartTime: startTime,
            currentClassEndTime: endTime,
            currentNo: classData[3] ?? 0,
            upcomingClass: classData[4] ?? '-',
            timeTableUrl: timeTableUrl,
            currentClassCourseCode: mapping.courseCode,
            currentClassMappingId: mapping.mappingId,
            currentClassFacultyId: mapping.facultyId,
          );
          print(
              "The data processed before adding into list in [CurrentClassRemoteDataSource]:  " +
                  schedule.toString());
          list.add(schedule);
        }

        // List<dynamic> data = [...partialData, courseCode, mappingId];
        // final currentClassData = ClassScheduleModel.fromList(data);
        // print(currentClassData);
        print("The data processed in [CurrentClassRemoteDataSource]:  " +
            list.toString());
        return list;
      } else {
        throw const ServerException('Unable to fetch current classes');
      }
    } catch (e) {
      throw ServerException("[From current_class_remote] $e");
    }
  }

  //
  //
  Future<CourseClassFacultyMappingModel> _getMappingId(
      String? courseCode, String classCode) async {
    if (courseCode == null || courseCode == '')
      return CourseClassFacultyMappingModel(
          mappingId: -10,
          courseCode: 'null course code',
          classCode: classCode,
          facultyId: 'null',
          semester: -10);

    // HACK: This is a temporary solution to get the mapping id
    // final userData = await authRemoteDataSource.getCurrentUserData();
    final query = supabaseClient.from('course_class_faculty_mapping').select();

    // if (userData == null) return null;

    final response =
        await query.eq('class_code', classCode).eq('course_code', courseCode);
    print(
        "The mapping response for class $classCode got in [CurrentClassRemoteDataSource]:  " +
            response.toString());
    if (response.isEmpty) return Constants.freeClassFacultyMapping;
    final mappedData = CourseClassFacultyMappingModel.fromMap(response.first);
    return mappedData;
  }

  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  //

  @override
  Future<List<ClassScheduleModel>> getCurrentClasses() async {
    // const url = Constants.itDepartmentTimeTableSheet;
    // // if (url == '') {
    // //   // throw const ServerException('Invalid class code');
    // //   // HACK: This is a temporary solution

    // // }
    // try {
    //   final response = await http.get(
    //     Uri.parse(url),
    //     headers: {
    //       'Content-Type': 'application/json',
    //     },
    //   );

    //   if (response.statusCode == 200) {
    //     if (response.body.isEmpty) {
    //       throw const ServerException('Response body is empty');
    //     }
    //     print(response.body);
    //     List<ClassScheduleModel> list = [];
    //     Map<String, dynamic> sheetData = json.decode(response.body);

    //     sheetData.forEach((key, value) async {
    //       if (key.contains("link")) {
    //         return;
    //       }

    //       List<dynamic> classData = value;

    //       String linkKey = key + "link";
    //       String timeTableUrl = sheetData[linkKey] ?? '';
    //       // Assuming classData[1] is the start time and classData[2] is the end time in HH:mm format
    //       DateTime now = DateTime.now();
    //       DateTime startTime = DateTime(now.year, now.month, now.day);
    //       DateTime endTime = DateTime(now.year, now.month, now.day);
    //       if (classData[1] is String) {
    //         List<String> startTimeParts = classData[1].split(':');
    //         startTime = DateTime(now.year, now.month, now.day,
    //             int.parse(startTimeParts[0]), int.parse(startTimeParts[1]));
    //       }
    //       if (classData[2] is String) {
    //         List<String> endTimeParts = classData[2].split(':');
    //         endTime = DateTime(now.year, now.month, now.day,
    //             int.parse(endTimeParts[0]), int.parse(endTimeParts[1]));
    //       }
    //       String? courseCode =
    //           Constants.itbSem4SubjectToCourseCode[classData[0]];
    //       final mapping = await _getMappingId(courseCode);

    //       if (mapping == null || mapping.mappingId == 0) {
    //         list.add(Constants.defaultClassSchedule);
    //         return;
    //       }

    //       ClassScheduleModel schedule = ClassScheduleModel(
    //         classCode: mapping.classCode,
    //         currentClass: classData[0] ?? '-',
    //         currentClassStartTime: startTime,
    //         currentClassEndTime: endTime,
    //         currentNo: classData[3] ?? 0,
    //         upcomingClass: classData[4] ?? '-',
    //         timeTableUrl: timeTableUrl,
    //         currentClassCourseCode: mapping.courseCode,
    //         currentClassMappingId: mapping.mappingId,
    //         currentClassFacultyId: mapping.facultyId,
    //       );

    //       list.add(schedule);
    //     });

    //     // List<dynamic> data = [...partialData, courseCode, mappingId];
    //     // final currentClassData = ClassScheduleModel.fromList(data);
    //     // print(currentClassData);
    //     return list;
    //   } else {
    //   throw const ServerException('Unable to fetch current classes');
    // }
    throw UnimplementedError();
  }
}
  // catch (e) {
  //   throw ServerException("[From current_class_remote] $e");
  // }


//   @override
//   Future<ClassScheduleModel> getCurrentClasses() async {
//     //TODO:use current class model
//     try {
//       final response = await http.get(
//         Uri.parse(''),//TODO: add url not necessary
//         headers: {
//           'Content-Type': 'application/json',
//         },
//       );

//       if (response.statusCode == 200) {
//         if (response.body.isEmpty) {
//           throw const ServerException('Response body is empty');
//         }
//         List<dynamic> partialData = json.decode(response.body);
//         String? courseCode =
//             Constants.itbSem4SubjectToCourseCode[partialData[0]];
//         int mappingId = await _getMappingId(courseCode) ?? 0;
//         List<dynamic> data = [...partialData, courseCode, mappingId];
//         final currentClassData = ClassScheduleModel.fromList(data);
//         print(currentClassData);
//         return currentClassData;
//       } else {
//         throw const ServerException('Unable to fetch current classes');
//       }
//     } catch (e) {
//       throw ServerException(e.toString());
//     }
//   }

