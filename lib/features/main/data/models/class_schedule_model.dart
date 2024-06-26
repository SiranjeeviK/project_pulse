import 'dart:convert';

import 'package:project_pulse/features/main/domain/entities/class_schedule.dart';

class ClassScheduleModel extends ClassSchedule {
  const ClassScheduleModel({
    // fetched from the google sheet
    required super.currentClass,
    required super.currentClassStartTime,
    required super.currentClassEndTime,
    required super.currentNo,
    required super.upcomingClass,
    required super.timeTableUrl,

    // fetched from the database and [constant(for now)]
    required super.currentClassCourseCode,
    required super.currentClassMappingId,
    required super.classCode,
    required super.currentClassFacultyId,
  });

  // factory ClassScheduleModel.fromList(List<dynamic> list) {
  //   return ClassScheduleModel(
  //       currentClass: list[0] ?? '-',
  //       currentClassCourseCode: list[3] ?? '',
  //       currentClassMappingId: list[4] ?? 0,
  //       currentNo: list[1] ?? 0,
  //       upcomingClass: list[2] ?? '-');
  // }

  @override
  ClassScheduleModel copyWith({
    String? currentClass,
    DateTime? currentClassStartTime,
    DateTime? currentClassEndTime,
    int? currentNo,
    String? upcomingClass,
    String? timeTableUrl,
    String? currentClassCourseCode,
    int? currentClassMappingId,
    String? classCode,
    String? currentClassFacultyId,
  }) {
    return ClassScheduleModel(
      currentClass: currentClass ?? super.currentClass,
      currentClassStartTime: currentClassStartTime ?? super.currentClassStartTime,
      currentClassEndTime: currentClassEndTime ?? super.currentClassEndTime,
      currentNo: currentNo ?? super.currentNo,
      upcomingClass: upcomingClass ?? super.upcomingClass,
      timeTableUrl: timeTableUrl ?? super.timeTableUrl,
      currentClassCourseCode: currentClassCourseCode ?? super.currentClassCourseCode,
      currentClassMappingId: currentClassMappingId ?? super.currentClassMappingId,
      classCode: classCode ?? super.classCode,
      currentClassFacultyId: currentClassFacultyId ?? super.currentClassFacultyId,
    );
  }  

  factory ClassScheduleModel.fromMap(Map<String, dynamic> map) {
    return ClassScheduleModel(
      currentClass: map['currentClass'],
      currentClassStartTime: map['currentClassStartTime'],
      currentClassEndTime: map['currentClassEndTime'],
      currentNo: map['currentNo'],
      upcomingClass: map['upcomingClass'],
      timeTableUrl: map['timeTableUrl'],
      currentClassCourseCode: map['currentClassCourseCode'],
      currentClassMappingId: map['currentClassMappingId'],
      classCode: map['classCode'],
      currentClassFacultyId: map['currentClassFacultyId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'currentClass': currentClass,
      'currentClassStartTime': currentClassStartTime,
      'currentClassEndTime': currentClassEndTime,
      'currentNo': currentNo,
      'upcomingClass': upcomingClass,
      'timeTableUrl': timeTableUrl,
      'currentClassCourseCode': currentClassCourseCode,
      'currentClassMappingId': currentClassMappingId,
      'classCode': classCode,
      'currentClassFacultyId': currentClassFacultyId,
    };
  }

  factory ClassScheduleModel.fromJson(String json) {
    return ClassScheduleModel.fromMap(jsonDecode(json));
  }

  Map<String, dynamic> toJson() {
    return {
      'currentClass': currentClass,
      'currentClassStartTime': currentClassStartTime,
      'currentClassEndTime': currentClassEndTime,
      'currentNo': currentNo,
      'upcomingClass': upcomingClass,
      'timeTableUrl': timeTableUrl,
      'currentClassCourseCode': currentClassCourseCode,
      'currentClassMappingId': currentClassMappingId,
      'classCode': classCode,
      'currentClassFacultyId': currentClassFacultyId,
    };
  }
}
