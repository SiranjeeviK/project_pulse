import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

/// takes a dataset of DateTime and int, where int is the status of the attendance
class LastThirtyDaysAttendanceHeatMap extends StatelessWidget {
  const LastThirtyDaysAttendanceHeatMap({
    super.key,
    required this.dataset,
  });

  final Map<DateTime, int>? dataset;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: HeatMap(
        colorsets: {
          -1: Colors.transparent,
          0: Colors.red,
          1: Colors.green[100]!,
          2: Colors.green[200]!,
          3: Colors.green[300]!,
          4: Colors.green[400]!,
          5: Colors.green[500]!,
          6: Colors.green[600]!,
          7: Colors.green[700]!,
          8: Colors.green[800]!,
          9: Colors.green[900]!,
        },
        startDate: DateTime.now().subtract(const Duration(days: 30)),
        endDate: DateTime.now().add(const Duration(days: 0)),
        showText: true,
        size: 40,
        colorTipCount: 9,
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
