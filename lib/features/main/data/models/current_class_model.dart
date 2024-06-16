import 'package:project_pulse/features/main/domain/entities/current_class.dart';

class CurrentClassModel extends CurrentClass {
  const CurrentClassModel({
    required super.currentClass,
    required super.upcomingClass,
    required super.currentNo,
  });
  // TODO: Add more fields as needed such as start and end time

  factory CurrentClassModel.fromList(List<dynamic> list) {
    return CurrentClassModel(
        currentClass: list[0], currentNo: list[1], upcomingClass: list[2]);
  }

  @override
  String toString() {
    return "The Current ($currentNo) Period is $currentClass and the next class is $upcomingClass";
  }
}













// class CurrentClassesModel extends CurrentClass{
//   CurrentClassesModel({
//     required String id,
//     required String title,
//     required String description,
//     required String startTime,
//     required String endTime,
//     required String date,
//     required String location,
//     required String teacher,
//     required String subject,
//     required String classCode,
//     required String classId,
//     required String teacherId,
//     required String subjectId,
//     required String classCodeId,
//     required String locationId,
//     required String dateId,
//     required String startTimeId,
//     required String endTimeId,
//   }) : super(
//     id: id,
//     title: title,
//     description: description,
//     startTime: startTime,
//     endTime: endTime,
//     date: date,
//     location: location,
//     teacher: teacher,
//     subject: subject,
//     classCode: classCode,
//     classId: classId,
//     teacherId: teacherId,
//     subjectId: subjectId,
//     classCodeId: classCodeId,
//     locationId: locationId,
//     dateId: dateId,
//     startTimeId: startTimeId,
//     endTimeId: endTimeId,
//   );

//   factory CurrentClassesModel.fromJson(Map<String, dynamic> json) {
//     return CurrentClassesModel(
//       id: json['id'],
//       title: json['title'],
//       description: json['description'],
//       startTime: json['startTime'],
//       endTime: json['endTime'],
//       date: json['date'],
//       location: json['location'],
//       teacher: json['teacher'],
//       subject: json['subject'],
//       classCode: json['classCode'],
//       classId: json['classId'],
//       teacherId: json['teacherId'],
//       subjectId: json['subjectId'],
//       classCodeId: json['classCodeId'],
//       locationId: json['locationId'],
//       dateId: json['dateId'],
//       startTimeId: json['startTimeId'],
//       endTimeId: json['endTimeId'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'title': title,
//       'description': description,
//       'startTime': startTime,
//       'endTime': endTime,
//       'date': date,
//       'location': location,
//       'teacher': teacher,
//       'subject': subject,
//       'classCode': classCode,
//       'classId': classId,
//       'teacherId': teacherId,
//       'subjectId': subjectId,
//       'classCodeId': classCodeId
// }