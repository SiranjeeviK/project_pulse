import 'package:flutter/material.dart';

class BatchItem extends StatelessWidget {
  final BuildContext context;
  final String batchName;
  final String pageRoute;
  const BatchItem({
    super.key,
    required this.context,
    required this.batchName,
    required this.pageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              pageRoute,
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(batchName, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
