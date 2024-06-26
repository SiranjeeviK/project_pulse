// This page is used to display the attendance of a student as Overall Report, Subject Wise Report, Date Wise Report, Monthly Report, and All Semesters Report
import 'package:flutter/material.dart';

class AttendanceStudentView extends StatelessWidget {
  const AttendanceStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Student View'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Attendance Student View Page',
            ),
          ],
        ),
      ),
    );
  }
}
