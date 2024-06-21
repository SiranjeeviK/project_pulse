import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/utils/show_snackbar.dart';
import 'package:project_pulse/features/main/presentation/bloc/main_bloc.dart';

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
                  context.read<MainBloc>().add(FetchAllStudents());
                  showSnackbar(context, 'Fetching Students...');
                  Future.delayed(const Duration(milliseconds: 2000), () {
                    Navigator.pushNamed(context, '/student_list');
                  });
                  // Navigator.pushNamed(context, '/student_list');
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
