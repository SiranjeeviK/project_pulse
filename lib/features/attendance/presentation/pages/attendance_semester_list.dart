import 'package:flutter/material.dart';

class AttendanceSemesterList extends StatelessWidget {
  const AttendanceSemesterList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Semester View'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Attendance Semester View Page',
            ),
          ],
        ),
      ),
    );
  }
}
