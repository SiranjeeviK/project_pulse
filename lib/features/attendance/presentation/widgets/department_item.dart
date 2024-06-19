import 'package:flutter/material.dart';

class DepartmentItem extends StatelessWidget {
  final BuildContext context;
  final String departmentName;
  final String departmentId;
  final String hodName;
  final String pageRoute;
  const DepartmentItem({
    super.key,
    required this.context,
    required this.departmentName,
    required this.departmentId,
    required this.hodName,
    required this.pageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(departmentName),
      subtitle: Text(hodName),
      onTap: () {
        Navigator.pushNamed(
          context,
          pageRoute,
        );
      },
      // return SizedBox(
      //   width: double.infinity,
      //   height: 100,
      //   // ignore: sized_box_for_whitespace
      //   // ignore: avoid_unnecessary_containers
      //   // ignore: sized_box_for_whitespace
      // )
      // child: Card(
      //   elevation: 4,
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      //   child: InkWell(
      //     onTap: () {
      //       Navigator.pushNamed(
      //         context,
      //         pageRoute,
      //       );
      //     },
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text(batchName, style: const TextStyle(fontSize: 16)),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
