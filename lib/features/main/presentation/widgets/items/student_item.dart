import 'package:flutter/material.dart';
import 'package:project_pulse/core/common/widgets/user_avatar.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';

class StudentItem extends StatelessWidget {
  final Student student;
  const StudentItem({
    super.key,
    required this.student,
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
                      Text(student.name,
                          style: Theme.of(context).textTheme.titleMedium),
                      Text(
                        student.rollNo,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        student.classCode,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        student.registerNo,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Text(
                        student.email,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),

                      // const SizedBox(height: 8.0),
                    ],
                  ),
                ),
                UserAvatar(user: student),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
