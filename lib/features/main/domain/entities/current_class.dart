class CurrentClass {
  final String currentClass;
  final int currentNo;
  final String upcomingClass;
  // TODO: Add more fields as needed such as start and end time

  const CurrentClass(
      {required this.currentClass,
      required this.currentNo,
      required this.upcomingClass});

  factory CurrentClass.fromList(List<dynamic> list) {
    return CurrentClass(
        currentClass: list[0], currentNo: list[1], upcomingClass: list[2]);
  }

  @override
  String toString() {
    return "The Current ($currentNo) Period is $currentClass and the next class is $upcomingClass";
  }
}
