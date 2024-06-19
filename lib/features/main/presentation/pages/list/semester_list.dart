import 'package:flutter/material.dart';

class SemesterList extends StatelessWidget {
  const SemesterList({super.key});
  // TODO: Implement SemesterList
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
