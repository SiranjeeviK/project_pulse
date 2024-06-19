import 'package:flutter/material.dart';
import 'package:project_pulse/features/main/domain/entities/department.dart';

class AttendanceDepartmentList extends StatelessWidget {
  const AttendanceDepartmentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Department View'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //   FutureBuilder(
              //     future: getDepartments(),
              //     builder: ListView.builder(itemBuilder: (context, index) {
              //       return DepartmentItem(
              //         context: context,
              //         departmentName: 'Department Name',
              //         departmentId: 'Department Id',
              //         hodName: 'HOD Name',
              //         pageRoute: 'Page Route',
              //       );
              //     }),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<List<Department>> getDepartments() async {
  return [];
}
