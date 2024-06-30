/// It takes multiple dates along with status, if the date is Sunday then it change the status to -1. Otherwise it will keep the status as it is.
Map<DateTime, int>? flagSunday(Map<DateTime, int> dateAndStatus) {
  Map<DateTime, int>? sundayFlagged = {};
  for (var date in dateAndStatus.keys) {
    if (date.weekday == DateTime.sunday) {
      sundayFlagged[DateTime(date.year, date.month, date.day)] = -1;
    } else {
      sundayFlagged[DateTime(date.year, date.month, date.day)] =
          dateAndStatus[date]!;
    }
  }
  return sundayFlagged;
}
