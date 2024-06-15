import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/common/cubits/app_user/app_user_cubit.dart';
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
            UserAvatar(
              user: user is AppUserLoggedIn ? user.user : Constants.testUser,
              radius: 50,
            ),
            const SizedBox(height: 16),
            Text(
              user is AppUserLoggedIn
                  ? user.user.name
                  : Constants.testUser.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              Constants.testUser.email,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            const ListTile(
              leading: Icon(Icons.school),
              title: Text('Course: Computer Science'),
            ),
            const ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Year: 2nd Year'),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone: +123 456 7890'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle edit profile
              },
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
