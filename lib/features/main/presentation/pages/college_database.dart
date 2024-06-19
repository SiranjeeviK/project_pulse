import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          padding: EdgeInsets.all(8.0),
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
                  Navigator.pushNamed(context, '/student_list');
                },
              ),
              ListTile(
                title: const Text('Faculty'),
                onTap: () {
                  Navigator.pushNamed(context, '/faculty_list');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
