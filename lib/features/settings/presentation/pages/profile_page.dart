import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:project_pulse/core/common/entities/user.dart';
import 'package:project_pulse/core/common/widgets/user_avatar.dart';
import 'package:project_pulse/core/constants/constants.dart';

class ProfilePage extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const ProfilePage());
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppUserCubit>().state;
    final User user =
        state is AppUserLoggedIn ? state.user : Constants.testUser;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      // TODO: Implement profile editing and make this dynamic
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // user.toString();

                // TODO: add a edit profile picture dialog and update the profile picture
              },
              child: UserAvatar(
                user: user,
                radius: 50,
              ),
            ),
            const SizedBox(height: 16),
            // name and email
            Text(
              user.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              user.email,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.school),
              title: Text('Branch: ${user.departmentName}'),
            ),
            if (user.isFaculty)
              ListTile(
                leading: const Icon(Icons.school_outlined),
                title: Text('Designation: ${user.designation}'),
              ),
            if (user.isStudent)
              ListTile(
                leading: const Icon(Icons.school),
                title: Text('Register No: ${user.name}'),
              ),
            if (user.isStudent)
              ListTile(
                leading: const Icon(Icons.calendar_today),
                title: Text('Year: ${user.graduationYear - 4}'),
              ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: Text('Phone: ${user.phoneNumber}'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                //TODO: Handle edit profile
              },
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
