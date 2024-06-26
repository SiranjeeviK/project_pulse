// TODO: create a model for current class
class ClassSchedule {
  final String currentClass;
  final DateTime currentClassStartTime;
  final DateTime currentClassEndTime;
  final int currentNo;
  final String upcomingClass;
  final String timeTableUrl;
  final String currentClassCourseCode;
  final int currentClassMappingId;
  final String classCode;
  final String currentClassFacultyId;
  // TODO: Add more fields as needed such as start and end time

  const ClassSchedule({
    required this.currentClass,
    required this.currentClassStartTime,
    required this.currentClassEndTime,
    required this.currentNo,
    required this.upcomingClass,
    required this.timeTableUrl,
    required this.currentClassCourseCode,
    required this.currentClassMappingId,
    required this.classCode,
    required this.currentClassFacultyId,
  });

  ClassSchedule copyWith({
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
    return ClassSchedule(
      currentClass: currentClass ?? this.currentClass,
      currentClassStartTime:
          currentClassStartTime ?? this.currentClassStartTime,
      currentClassEndTime: currentClassEndTime ?? this.currentClassEndTime,
      currentNo: currentNo ?? this.currentNo,
      upcomingClass: upcomingClass ?? this.upcomingClass,
      timeTableUrl: timeTableUrl ?? this.timeTableUrl,
      currentClassCourseCode:
          currentClassCourseCode ?? this.currentClassCourseCode,
      currentClassMappingId:
          currentClassMappingId ?? this.currentClassMappingId,
      classCode: classCode ?? this.classCode,
      currentClassFacultyId:
          currentClassFacultyId ?? this.currentClassFacultyId,
    );
  }

  // factory ClassSchedule.fromList(List<dynamic> list) {
  //   return ClassSchedule(
  //       classCode: list[5] ?? '',
  //       currentClass: list[0] ?? '-',
  //       currentClassStartTime: DateTime.now(),
  //       currentClassEndTime: DateTime.now(),
  //       currentClassCourseCode: list[3] ?? '',
  //       currentClassMappingId: list[4] ?? 0,
  //       currentNo: list[1] ?? 0,
  //       upcomingClass: list[2] ?? '-',
  //       timeTableUrl: '');
  // }

  @override
  String toString() {
    return "[Class Code: $classCode] The Current ($currentNo) Period is $currentClass taught by $currentClassFacultyId, starting at $currentClassStartTime and ends at $currentClassEndTime, its course code is $currentClassCourseCode, its mapping id is $currentClassMappingId and the next class is going to be$upcomingClass. its timetable url is $timeTableUrl.\n";
  }
}
