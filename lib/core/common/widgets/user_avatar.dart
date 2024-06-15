import 'package:flutter/material.dart';
import 'package:project_pulse/core/common/entities/user.dart';
import 'package:project_pulse/core/constants/constants.dart';

class UserAvatar extends StatelessWidget {
  final User user;
  final double radius;
  const UserAvatar({super.key, required this.user, this.radius = 25.0});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(
        user.profilePhotoUrl == ''
            ? Constants.defaultProlilePhotoUrl
            : user.profilePhotoUrl,
      ),
      radius: radius,
    );
  }
}
