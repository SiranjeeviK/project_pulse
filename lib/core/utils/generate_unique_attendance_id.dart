String generateUniqueAttendanceId(DateTime date, int nthPeriod, int mappingId, String rollNumber) {
  // yyyy-mm-dd/nth period/mapping_id/roll_number
  return '${date.year}-${date.month}-${date.day}/$nthPeriod/$mappingId/$rollNumber';
}