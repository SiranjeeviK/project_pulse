import 'package:flutter/material.dart';
import 'package:project_pulse/features/attendance/presentation/widgets/attendance_report/basic_student_info.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';

/// Displays the details of the student
class StudentDetailPage extends StatelessWidget {
  final Student student;
  const StudentDetailPage({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Detail'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: BasicStudentInfo(student: student),
        ),
      ),
    );
  }
}
