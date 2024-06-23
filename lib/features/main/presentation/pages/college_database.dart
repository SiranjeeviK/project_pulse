import 'package:flutter/material.dart';
import 'package:project_pulse/core/utils/show_snackbar.dart';

class CollegeDatabase extends StatelessWidget {
  const CollegeDatabase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('College Database'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              ListTile(
                title: const Text('Batches'),
                onTap: () {
                  Navigator.pushNamed(context, '/batch_list');
                },
              ),
              ListTile(
                title: const Text('Departments'),
                onTap: () {
                  Navigator.pushNamed(context, '/department_list');
                },
              ),
              ListTile(
                title: const Text('Class'),
                onTap: () {
                  Navigator.pushNamed(context, '/class_list');
                },
              ),
              ListTile(
                title: const Text('Students'),
                onTap: () {
                  showSnackbar(context, 'Fetching Students...');
                  Navigator.pushNamed(context, '/student_list');
                },
              ),
              ListTile(
                title: const Text('Faculty'),
                onTap: () {
                  Navigator.pushNamed(context, '/faculty_list');
                },
              ),
              ListTile(
                title: const Text('Courses'),
                onTap: () {
                  Navigator.pushNamed(context, '/course_list');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
