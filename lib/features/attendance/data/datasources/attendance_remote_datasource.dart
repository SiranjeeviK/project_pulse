import 'package:project_pulse/core/error/exception.dart';
import 'package:project_pulse/features/attendance/data/models/attendance_model.dart';
import 'package:project_pulse/features/attendance/domain/entities/attendance.dart';
import 'package:project_pulse/features/attendance/domain/usecases/mark_attendance.dart';
import 'package:project_pulse/features/main/data/models/course_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AttendanceRemoteDatasource {
  Future<List<Attendance>> markAttendance(AttendanceParams attendanceParams);
}

class AttendanceRemoteDatasourceImpl implements AttendanceRemoteDatasource {
  final SupabaseClient supabaseClient;

  AttendanceRemoteDatasourceImpl({required this.supabaseClient});
  // create table
  //   public.attendance (
  //     attendance_id uuid not null,
  //     student_id uuid null,
  //     course_id uuid null,
  //     date date not null,
  //     status text null,
  //     roll_number text null,
  //     class_code text null,
  //     faculty_id uuid null,
  //     remarks text null,
  //     substitute_faculty_id uuid null,
  //     constraint attendance_pkey primary key (attendance_id),
  //     constraint attendance_course_id_fkey foreign key (course_id) references courses (course_id),
  //     constraint attendance_faculty_id_fkey foreign key (faculty_id) references faculty (faculty_id) on update cascade on delete restrict,
  //     constraint attendance_class_code_fkey foreign key (class_code) references classes (class_code) on update cascade on delete restrict,
  //     constraint attendance_roll_number_fkey foreign key (roll_number) references students (roll_number) on update cascade on delete restrict,
  //     constraint attendance_user_id_fkey foreign key (student_id) references users (user_id),
  //     constraint attendance_status_check check (
  //       (
  //         status = any (
  //           array[
  //             'present'::text,
  //             'absent'::text,
  //             'late'::text,
  //             'on_duty'::text
  //           ]
  //         )
  //       )
  //     )
  //   ) tablespace pg_default;
  @override
  Future<List<AttendanceModel>> markAttendance(
      AttendanceParams attendanceParams) async {
    try {
      final courses = await supabaseClient
          .from('courses')
          .select()
          .eq('course_code', attendanceParams.courseCode);
      if (courses.isEmpty) {
        throw const ServerException('Course not found');
      }

      final course = CourseModel.fromMap(courses.first);

      for (String id in attendanceParams.studentIds) {
        final response = await supabaseClient.from('attendance').upsert([
          {
            'student_id': id,
            'date': attendanceParams.date.toIso8601String(),
            'status': attendanceParams.status,
            'class_code': attendanceParams.classCode,
            'faculty_id': attendanceParams.facultyId,
            'remarks': attendanceParams.remarks,
            'substitute_faculty_id': attendanceParams.substituteFacultyId,
          }
        ]);
        if (response.error != null) {
          throw ServerException(response.error!.message);
        }
      }

      final attendences = await supabaseClient
          .from('attendance')
          .select()
          .eq('date', attendanceParams.date.toIso8601String())
          .eq('class_code', attendanceParams.classCode)
          .eq('course_code', course.courseCode);
      if (attendences.isEmpty) {
        throw const ServerException('Attendance not marked');
      }

      return attendences.map((e) => AttendanceModel.fromMap(e)).toList();
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
