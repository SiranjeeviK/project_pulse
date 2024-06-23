import 'package:flutter/material.dart';
import 'package:project_pulse/core/common/widgets/user_avatar.dart';
import 'package:project_pulse/features/main/domain/entities/faculty.dart';

class FacultyItem extends StatelessWidget {
  final Faculty faculty;
  const FacultyItem({
    super.key,
    required this.faculty,
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
                      Row(
                        children: [
                          Text(faculty.name,
                              style: Theme.of(context).textTheme.titleMedium),
                          if (faculty.designation == "HOD") // Check if HOD
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text("(HOD)",
                                  style: TextStyle(
                                      color: Colors.red, // HOD indicator in red
                                      fontWeight: FontWeight.bold)),
                            ),
                        ],
                      ),
                      if (faculty.classCode.isNotEmpty)
                        Text(
                          "Class Advisor of: ${faculty.classCode}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      Text(
                        faculty.departmentCode,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        faculty.email,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),

                      // const SizedBox(height: 8.0),
                    ],
                  ),
                ),
                UserAvatar(user: faculty),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
