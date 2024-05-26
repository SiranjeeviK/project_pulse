import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => const SchedulePage());
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule'),
      ),
      body: const Center(
        child: Text('Schedule Page Content'),
      ),
    );
  }
}
