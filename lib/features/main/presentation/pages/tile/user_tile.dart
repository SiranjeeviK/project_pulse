import 'package:flutter/material.dart';
import 'package:project_pulse/features/auth/data/models/user_model.dart';
import 'package:project_pulse/init_dependencies.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserTile extends StatelessWidget {
  final String userId;
  const UserTile({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    final supabase = serviceLocator<SupabaseClient>();
    return StreamBuilder(
      stream: supabase.from('users').select().eq('user_id', userId).asStream(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final UserModel user = UserModel.fromMap(snapshot.data!.first);

          return Padding(
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
                          Text(user.name,
                              style: Theme.of(context).textTheme.titleMedium),
                          Text(
                            user.email,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
