String daysWeekMonth(Duration duration) {
  const int daysInMonth = 30; // Average days in a month
  const int daysInWeek = 7; // Days in a week

  int totalDays = duration.inDays;
  int months = totalDays ~/ daysInMonth;
  int remainingDays = totalDays % daysInMonth;
  int weeks = remainingDays ~/ daysInWeek;
  remainingDays = remainingDays % daysInWeek;
  dynamic dayWeekMonth = {
    'months': months,
    'weeks': weeks,
    'days': remainingDays
  };
  StringBuffer phrase = StringBuffer();
  if (months > 0) {
    phrase.write(months == 1 ? 'Un mes' : '$months meses');
  }
  if (weeks > 0) {
    if (phrase.isNotEmpty) phrase.write(', ');
    phrase.write(weeks == 1 ? 'Una semana' : '$weeks semanas');
  }
  if (remainingDays > 0) {
    if (phrase.isNotEmpty) phrase.write(', ');
    phrase.write(remainingDays == 1 ? 'Un día' : '$remainingDays días');
  }
  return phrase.toString();
}
