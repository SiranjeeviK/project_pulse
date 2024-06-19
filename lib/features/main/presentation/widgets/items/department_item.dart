import 'package:flutter/material.dart';
import 'package:project_pulse/features/main/domain/entities/department.dart';

class DepartmentItem extends StatelessWidget {
  final Department department;
  const DepartmentItem({
    super.key,
    required this.department,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(department.departmentName,
                          style: Theme.of(context).textTheme.titleMedium),
                      Text(
                        department.departmentCode,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),

                      // const SizedBox(height: 8.0),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            const Divider(),
            Text(
              // TODO: Fetch teacher name from teacherId
              "HOD: " + department.headOfDepartmentId,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
