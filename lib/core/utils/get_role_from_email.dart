import 'package:project_pulse/core/error/exception.dart';

String getRoleFromEmail(String email) {
  final RegExp sietRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@siet\.ac\.in$');
  final RegExp srishakthiRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@srishakthi\.ac\.in$');

  if (sietRegex.hasMatch(email)) {
    return 'Faculty';
  } else if (srishakthiRegex.hasMatch(email)) {
    return 'Student';
  } else {
    throw const ServerException('Invalid email domain');
  }
}
