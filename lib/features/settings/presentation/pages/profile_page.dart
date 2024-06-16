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
    final user = context.watch<AppUserCubit>().state;
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
                if (user is AppUserLoggedIn) user.user.toString();

                // TODO: add a edit profile picture dialog and update the profile picture
              },
              child: UserAvatar(
                user: user is AppUserLoggedIn ? user.user : Constants.testUser,
                radius: 50,
              ),
            ),
            const SizedBox(height: 16),
            // name and email
            Text(
              user is AppUserLoggedIn
                  ? user.user.name
                  : Constants.testUser.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              user is AppUserLoggedIn
                  ? user.user.email
                  : Constants.testUser.name,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            const ListTile(
              leading: Icon(Icons.school),
              title: Text('Branch: ' + 'IT'),
            ),
            if (user is AppUserLoggedIn && user.user.isStudent)
              ListTile(
                leading: Icon(Icons.school),
                title: Text('Register No: ${(user.user).name}'),
              ),
            if (user is AppUserLoggedIn && user.user.isStudent)
              ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text(
                    'Year: ' + (user.user as Student).currentYear.toString()),
              ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                  'Phone: ${user is AppUserLoggedIn ? user.user.phoneNumber : Constants.testUser.phoneNumber}'),
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
