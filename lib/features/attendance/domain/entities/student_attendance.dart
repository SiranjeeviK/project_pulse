/// Parameters for marking attendance are studentId, rollNo and status
class StudentAttendance {
  final String studentId;
  final String rollNo;
  final String status;



  // used for updating attendance
  final String? attendanceId;

  StudentAttendance({
    required this.studentId,
    required this.rollNo,
    required this.status,
    this.attendanceId,
  });
}