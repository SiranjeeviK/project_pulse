import 'package:flutter/material.dart';

class FeatureItem extends StatelessWidget {
  final BuildContext context;
  final IconData icon;
  final String label;
  final String pageRoute;
  const FeatureItem({
    super.key,
    required this.context,
    required this.icon,
    required this.label,
    required this.pageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            pageRoute,
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40),
            const SizedBox(height: 8),
            Text(label, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
