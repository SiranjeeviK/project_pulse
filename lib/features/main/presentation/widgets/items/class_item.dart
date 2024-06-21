import 'package:flutter/material.dart';
import 'package:project_pulse/features/main/domain/entities/class.dart';
import 'package:project_pulse/features/main/presentation/pages/tile/user_tile.dart';

class ClassItem extends StatelessWidget {
  final Class classData;
  const ClassItem({super.key, required this.classData});

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
                      Text(classData.className,
                          style: Theme.of(context).textTheme.titleMedium),
                      Text(
                        classData.classCode,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Text(
                        "Department ID: ${classData.departmentId.toString()}",
                        // TODO: Fetch department name from departmentId
                        style: Theme.of(context).textTheme.labelSmall,
                      ),

                      // const SizedBox(height: 8.0),
                    ],
                  ),
                ),

                // TOTAL COUNT
                Flexible(
                  child: Text(
                    "Total Students: ${classData.totalStudents.toString()}",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                ),
              ],
            ),
            if (classData.classAdvisorId != '')
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8.0),
                  const Divider(),
                  Text(
                    // TODO: Fetch teacher name from teacherId
                    "   Class Advisor: ",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  UserTile(userId: classData.classAdvisorId),
                ],
              )
          ],
        ),
      ),
    );
  }
}
