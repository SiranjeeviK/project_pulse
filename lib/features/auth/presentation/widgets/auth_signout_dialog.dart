import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/utils/show_snackbar.dart';
import 'package:project_pulse/features/auth/presentation/bloc/auth_bloc.dart';

class AuthSignoutDialog extends StatelessWidget {
  const AuthSignoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Sign Out'),
      content: const Text('Are you sure you want to sign out?'),
      actions: [
        TextButton(
          onPressed: () {
            context.read<AuthBloc>().add(AuthLogout());
            Navigator.of(context).pop();
            Future.delayed(const Duration(seconds: 2));
            showSnackbar(context, 'You have signed out successfully.');
            Future.delayed(const Duration(seconds: 2));
            Navigator.pushNamedAndRemoveUntil(
                context, '/login', (route) => false);
          },
          child: const Text(
            'Sign Out',
            style: TextStyle(color: Colors.red),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
