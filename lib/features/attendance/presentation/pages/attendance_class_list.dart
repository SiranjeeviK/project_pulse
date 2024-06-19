import 'package:flutter/material.dart';

class AttendanceClassList extends StatelessWidget {
  const AttendanceClassList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Class View'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Attendance Class View Page',
            ),
          ],
        ),
      ),
    );
  }
}
