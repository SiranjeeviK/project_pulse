import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:project_pulse/core/constants/constants.dart';
import 'package:project_pulse/core/theme/light_pallete.dart';
import 'package:project_pulse/core/utils/add_space.dart';
import 'package:project_pulse/features/main/presentation/widgets/announcement_list_item.dart';
import 'package:project_pulse/features/main/presentation/widgets/current_class.dart';
import 'package:project_pulse/features/main/presentation/widgets/feature_item.dart';
import 'package:project_pulse/features/main/presentation/widgets/side_bar_drawer.dart';
import 'package:project_pulse/core/common/widgets/user_avatar.dart';

class HomePage extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => const HomePage());
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Homepage",
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () => Navigator.pushNamed(context, '/notifications'),
              icon: const Icon(Icons.notifications),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: UserAvatar(
                user: Constants.testUser,
                radius: 20,
              ),
            ),
          ),
        ],
      ),
      drawer: const SideBarDrawer(),
      bottomNavigationBar: const TheBottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Welcome
                Text('Welcome Back',
                    style: GoogleFonts.readexPro(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    )),
                Text(Constants.testUser.name,
                    style: GoogleFonts.readexPro(
                      fontSize: 20,
                    )),
                addVerticalSpace(16),
                // Report
                const CurrentClass(),

                _buildAnnouncementsSection(),
                addVerticalSpace(16),
                _buildFeatureGrid(context),
                addVerticalSpace(16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureGrid(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        FeatureItem(
          context: context,
          icon: Icons.schedule,
          label: 'Schedule',
          pageRoute: '/schedule',
        ),
        FeatureItem(
          context: context,
          icon: Icons.book,
          label: 'Courses',
          pageRoute: '/courses',
        ),
        FeatureItem(
          context: context,
          icon: Icons.notifications,
          label: 'Notifications',
          pageRoute: '/notifications',
        ),
        FeatureItem(
          context: context,
          icon: Icons.account_circle,
          label: 'Profile',
          pageRoute: '/profile',
        ),
      ],
    );
  }

  Widget _buildAnnouncementsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Announcements',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        AnnouncementListItem(
          title: 'Exam schedule released',
          subtitle: 'Check out the new exam schedule for this semester.',
          onTap: () {
            // Navigate to the detailed announcement page
          },
        )
        // Add more announcements here
      ],
    );
  }
}

class TheBottomNavBar extends StatelessWidget {
  // TODO: Make the page change with the bottom nav bar
  const TheBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        // color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: GNav(
        onTabChange: (value) => print(value),
        // rippleColor: Colors.black.withOpacity(.1), // tab button ripple color when pressed
        hoverColor: Colors.grey[500]!, // tab button hover color
        // haptic: true, // haptic feedback
        tabBorderRadius: 15,
        // tabActiveBorder:
        //     Border.all(color: Colors.black, width: 1), // tab button border
        // tabBorder:
        //     Border.all(color: Colors.grey, width: 1), // tab button border
        // // tabShadow: [
        // //   BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
        // // ], // tab button shadow
        // curve: Curves.easeOutExpo, // tab animation curves
        duration: const Duration(milliseconds: 300), // tab animation duration
        gap: 8, // the tab button gap between icon and text
        color: Colors.grey[800], // unselected icon color
        // activeColor: Colors.purple, // selected icon and text color
        activeColor:
            LightPallete.backgroundColor, // selected icon and text color
        iconSize: 24, // tab button icon size
        tabBackgroundColor: LightPallete.backgroundColor
            .withOpacity(0.05), // selected tab background color
        padding: const EdgeInsets.symmetric(
            horizontal: 12, vertical: 10), // navigation bar padding
        tabs: const [
          GButton(
            icon: LineIcons.home,
            text: 'Home',
          ),
          GButton(
            icon: LineIcons.calendar,
            text: 'Schedule',
          ),
          GButton(
            icon: Icons.group_outlined,
            text: 'Community',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
          )
        ],
      ),
    );
  }
}
