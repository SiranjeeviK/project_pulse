/// Parameters for marking attendance are studentId, rollNo and status
class StudentAttendance {
  final String studentId;
  final String rollNo;
  late String status;

  // used for updating attendance
  final String? attendanceId;

  StudentAttendance({
    required this.studentId,
    required this.rollNo,
    this.status = '',
    this.attendanceId,
  });

  @override
  String toString() {
    return 'StudentAttendance(studentId: $studentId, rollNo: $rollNo, status: $status, attendanceId: $attendanceId)';
  }

  StudentAttendance copyWith({
    String? studentId,
    String? rollNo,
    String? status,
    String? attendanceId,
  }) {
    return StudentAttendance(
      studentId: studentId ?? this.studentId,
      rollNo: rollNo ?? this.rollNo,
      status: status ?? this.status,
      attendanceId: attendanceId ?? this.attendanceId,
    );
  }
}
