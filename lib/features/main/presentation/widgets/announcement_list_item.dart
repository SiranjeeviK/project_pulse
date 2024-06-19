import 'package:flutter/material.dart';

class AnnouncementListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const AnnouncementListItem(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}
