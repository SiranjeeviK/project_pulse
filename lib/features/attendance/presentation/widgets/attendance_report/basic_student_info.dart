import 'package:flutter/material.dart';
import 'package:project_pulse/core/common/widgets/user_avatar.dart';
import 'package:project_pulse/features/main/domain/entities/student.dart';

class BasicStudentInfo extends StatelessWidget {
  const BasicStudentInfo({
    super.key,
    required this.student,
  });

  final Student student;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18.0),
            Center(
              child: UserAvatar(
                user: student,
                radius: 35,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Text(
                student.name,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 48.0),
            ]),
            const SizedBox(height: 18.0),
            const Divider(),
            Text(
              'Roll No: ${student.rollNo}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const Divider(),
            Text(
              'Graduation Year: ${student.graduationYear}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const Divider(),
            Text(
              'Class Code: ${student.classCode}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const Divider(),
            Text(
              'Register No: ${student.registerNo}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const Divider(),
            Text(
              'Email: ${student.email}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const Divider(),
            Text(
              'Phone: ${student.phoneNumber}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
