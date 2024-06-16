import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:project_pulse/core/constants/constants.dart';

// class CurrentClassData {
//   final String currentClass;
//   final int currentNo;
//   final String upcomingClass;

//   const CurrentClassData(
//       {required this.currentClass,
//       required this.currentNo,
//       required this.upcomingClass});

//   factory CurrentClassData.fromList(List<dynamic> list) {
//     return CurrentClassData(
//         currentClass: list[0], currentNo: list[1], upcomingClass: list[2]);
//   }

//   @override
//   String toString() {
//     return "The Current ($currentNo) Period is $currentClass and the next class is $upcomingClass";
//   }
// }

class TimeTableAPI {
  static Future<CurrentClassData> fetchCurrentClass(String url) async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      print(response.body);
      print(response.body.runtimeType);

      final data = jsonDecode(response.body);
      print(data);

      return CurrentClassData.fromList(data);
    } else {
      throw Exception("Unable to fetch session");
    }
  }
}

