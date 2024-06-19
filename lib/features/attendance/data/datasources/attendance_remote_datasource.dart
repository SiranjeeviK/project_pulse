import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AttendanceRemoteDatasource {

}

class AttendanceRemoteDatasourceImpl implements AttendanceRemoteDatasource {
  final SupabaseClient supabaseClient;

  AttendanceRemoteDatasourceImpl({required this.supabaseClient});

 
}
