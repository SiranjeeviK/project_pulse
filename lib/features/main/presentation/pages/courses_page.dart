import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => const CoursesPage());
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: const Center(
        child: Text('Courses Page Content'),
      ),
    );
  }
}
