import 'package:flutter/material.dart';

class NoRecordsFound extends StatelessWidget {
  const NoRecordsFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('No Records Found'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'No Records Found',
            ),
          ],
        ),
      ),
    );
  }
}
