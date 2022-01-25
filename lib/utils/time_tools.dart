DateTime formatMyTime(String date, String time) {
  final prefixSplit = date.split(" ");
  final dateSplit = prefixSplit[1].split("-");
  final timeSplit = time.split(" ");
  final isPm = timeSplit[1] == "PM";
  final hourSplit = timeSplit[0].split(":");
  final hour = int.parse(hourSplit[0]) + (isPm ? 12 : 0);
  final finalTime = DateTime.parse(
      '${dateSplit[2]}-${dateSplit[0].padLeft(2, '0')}-${dateSplit[1].padLeft(2, '0')} ${hour.toString().padLeft(2, '0')}:${hourSplit[1]}:00');
  return finalTime;
}

DateTime formatMyDate(String date) {
  final prefixSplit = date.split(" ");
  final dateSplit = prefixSplit[1].split("-");
  final finalTime = DateTime.parse(
      '${dateSplit[2]}-${dateSplit[0].padLeft(2, '0')}-${dateSplit[1].padLeft(2, '0')}');
  return finalTime;
}
