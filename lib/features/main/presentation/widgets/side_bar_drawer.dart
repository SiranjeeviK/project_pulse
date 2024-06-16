import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pulse/core/common/entities/user.dart';
import 'package:project_pulse/core/constants/constants.dart';
import 'package:project_pulse/core/theme/light_pallete.dart';
import 'package:project_pulse/core/utils/add_space.dart';
import 'package:project_pulse/features/auth/presentation/widgets/auth_signout_dialog.dart';
import 'package:project_pulse/features/main/presentation/pages/home_page.dart';
import 'package:project_pulse/features/notifications/presentation/pages/notifications_page.dart';
import 'package:project_pulse/features/settings/presentation/pages/profile_page.dart';
import 'package:project_pulse/features/settings/presentation/pages/app_settings.dart';

class SideBarDrawer extends StatelessWidget {
  final User user;
  const SideBarDrawer({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: [
          // Top Section
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    // TODO: Make this dynamic
                    // Title
                    Text(
                      "PROJECT  P U L S E",
                      style: GoogleFonts.orbitron(),
                    ),
                    addVerticalSpace(20),

                    // User Profile
                    // UserAvatar(
                    //   user: Constants.testUser,
                    //   radius: 30,
                    // ),
                    Text(user.name, style: GoogleFonts.readexPro()),
                    Text(user.role,
                        style: GoogleFonts.readexPro(
                            fontSize: 12, fontWeight: FontWeight.w300)),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(context, ProfilePage.route());
                      },
                      child: Text('View Profile',
                          style: GoogleFonts.readexPro(
                              fontSize: 12, color: LightPallete.primary)),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                ),
                title: const Text(
                  "Home",
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, HomePage.route());
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                ),
                title: const Text(
                  "Profile",
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, ProfilePage.route());
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.notifications,
                ),
                title: const Text(
                  "Notifications",
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, NotificationsPage.route());
                },
              ),
            ],
          ),

          // Bottom Section
          Column(
            children: [
              const Divider(),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                ),
                title: const Text(
                  "Settings",
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, AppSettings.route());
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                ),
                title: const Text(
                  "Logout",
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AuthSignoutDialog();
                    },
                  );
                  // Navigator.pop(context);
                  // Navigator.push(AuthSignoutDialog());
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
