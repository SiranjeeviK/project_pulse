class CurrentClass {
  final String currentClass;
  final String currentClassCourseCode;
  final int currentClassMappingId;
  final int currentNo;
  final String upcomingClass;
  // TODO: Add more fields as needed such as start and end time

  const CurrentClass(
      {required this.currentClass,
      required this.currentNo,
      required this.upcomingClass,
      required this.currentClassCourseCode,
      required this.currentClassMappingId
      });

  factory CurrentClass.fromList(List<dynamic> list) {
    return CurrentClass(
        currentClass: list[0] ?? '-',
        currentClassCourseCode: list[3] ?? '',
        currentClassMappingId: list[4] ?? 0,
        currentNo: list[1] ?? 0,
        upcomingClass: list[2] ?? '-');
  }

  @override
  String toString() {
    return "The Current ($currentNo) Period is $currentClass, its course code is $currentClassCourseCode, its mapping id is $currentClassMappingId and the next class is going to be$upcomingClass";
  }
}
