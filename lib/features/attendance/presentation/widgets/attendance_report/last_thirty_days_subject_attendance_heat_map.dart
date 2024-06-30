import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

/// takes a dataset of DateTime and int, where int is the status of the attendance
class LastThirtyDaysSubjectAttendanceHeatMap extends StatelessWidget {
  const LastThirtyDaysSubjectAttendanceHeatMap({
    super.key,
    required this.dataset,
  });

  final Map<DateTime, int>? dataset;

  @override
  Widget build(BuildContext context) {
    print(dataset);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: HeatMap(
        colorsets: {
          -1: Colors.transparent,
          0: Colors.red,
          1: Colors.green[200]!,
          2: Colors.green[500]!,
          3: Colors.green[900]!,
        },
        startDate: DateTime.now().subtract(const Duration(days: 30)),
        endDate: DateTime.now().add(const Duration(days: 0)),
        showText: true,
        size: 40,
        colorTipCount: 5,
        defaultColor: Colors.grey[300]!,
        textColor: Colors.black,
        showColorTip: true,
        colorTipHelper: const [
          Text('Absent '),
          Text(' Present'),
        ],
        colorMode: ColorMode.color,
        colorTipSize: 20,
        datasets: dataset,
        onClick: (p0) {
          print(p0);
        },
      ),
    );
  }
}
