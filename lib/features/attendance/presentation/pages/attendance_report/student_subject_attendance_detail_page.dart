import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/utils/flag_sunday.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/attendance_report/basic_student_info.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/attendance_report/last_thirty_days_subject_attendance_heat_map.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';

/// Displays the details of the student
class StudentSubjectAttendanceDetailPage extends StatelessWidget {
  final Student student;
  const StudentSubjectAttendanceDetailPage({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    final dataset = flagSunday({
      for (var i = 0; i < 30; i++)
        DateTime.now().subtract(Duration(days: i)): randomInt(0, 9).run()
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Subject Attendance'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Basic Student Details
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BasicStudentInfo(student: student),
            ),

            // 2. Last 30 days attendance heatmap
            LastThirtyDaysSubjectAttendanceHeatMap(dataset: dataset),

            // CalendarDatePicker(
            //   initialDate: DateTime.now(),
            //   firstDate: DateTime.now().subtract(const Duration(days: 30)),
            //   lastDate: DateTime.now(),
            //   onDateChanged: (value) {
            //     print(value);
            //   },
            //   selectableDayPredicate: (day) {
            //     return day.weekday != DateTime.sunday;
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
