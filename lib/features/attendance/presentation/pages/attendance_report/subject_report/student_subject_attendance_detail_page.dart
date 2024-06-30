import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:project_pulse/core/utils/flag_sunday.dart';
import 'package:project_pulse/features/attendance/presentation/pages/mark_attendance/mark_attendance_page.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/attendance_report/basic_student_info.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/attendance_report/last_thirty_days_subject_attendance_heat_map.dart';

/// Displays the details of the student
class StudentSubjectAttendanceDetailPage extends StatelessWidget {
  final StudentSubjectAttendanceDetailsParams params;
  const StudentSubjectAttendanceDetailPage({super.key, required this.params});

  @override
  Widget build(BuildContext context) {
    // TODO: remove the below hardcoded dataset and replace it with the actual dataset
    final dataset = flagSunday({
      for (var i = 0; i < 30; i++)
        DateTime.now().subtract(Duration(days: i)): randomInt(0, 4).run()
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
              child: BasicStudentInfo(student: params.student),
            ),

            // 2. Last 30 days attendance heatmap
            Text(
                "Last 30 days attendance heatmap of ${params.classSchedule.currentClass}"),
            LastThirtyDaysSubjectAttendanceHeatMap(dataset: dataset),
          ],
        ),
      ),
    );
  }
}
