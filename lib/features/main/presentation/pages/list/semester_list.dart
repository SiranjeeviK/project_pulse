import 'package:flutter/material.dart';

class SemesterList extends StatelessWidget {
  const SemesterList({super.key});
  // TODO: Implement SemesterList
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semester'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Semester List Page',
            ),
          ],
        ),
      ),
    );
  }
}
