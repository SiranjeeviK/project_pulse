import 'package:project_pulse/features/main/data/models/class_schedule_model.dart';
import 'package:project_pulse/features/main/domain/entities/class_schedule.dart';

/// Returns the current class schedule for the given [List<ClassSchedule>] and [String classCode]
ClassSchedule mySchedule(List<ClassSchedule> currentClass, String classCode) {
  // print("%%%%% " + currentClass.toString());
  for (ClassSchedule schedule in currentClass) {
    if (schedule.classCode == classCode) {
      print(classCode + "     " + schedule.currentClass);
      return schedule;
    }
  }

  return ClassScheduleModel(
    classCode: '',
    currentClass: '--',
    currentClassStartTime: DateTime.now(),
    currentClassEndTime: DateTime.now(),
    currentNo: 0,
    upcomingClass: '-',
    timeTableUrl: '',
    currentClassCourseCode: '',
    currentClassMappingId: 0,
    currentClassFacultyId: '',
  );
}
