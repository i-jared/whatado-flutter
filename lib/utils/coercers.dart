//DateTime conversion
DateTime fromGraphQLDateTimeToDartDateTime(String date) =>
    DateTime.parse(date).toLocal();
String fromDartDateTimeToGraphQLDateTime(DateTime date) =>
    date.toUtc().toIso8601String();
List<DateTime> fromGraphQLListDateTimeToDartListDateTime(List<String> dates) =>
    dates.map(fromGraphQLDateTimeToDartDateTime).toList();
List<String> fromDartListDateTimeToGraphQLListDateTime(List<DateTime> dates) =>
    dates.map(fromDartDateTimeToGraphQLDateTime).toList();

// Nullable DateTime conversion
DateTime? fromGraphQLDateTimeToDartDateTimeNullable(String date) =>
    DateTime.parse(date).toLocal();
DateTime? fromGraphQLDateTimeNullableToDartDateTimeNullable(String? date) =>
    date == null ? null : DateTime.parse(date).toLocal();
String? fromDartDateTimeToGraphQLDateTimeNullable(DateTime date) =>
    date.toUtc().toIso8601String();
String? fromDartDateTimeNullableToGraphQLDateTimeNullable(DateTime? date) =>
    date == null ? null : date.toUtc().toIso8601String();
List<DateTime?> fromGraphQLListDateTimeToDartListDateTimeNullable(
        List<String> dates) =>
    dates.map(fromGraphQLDateTimeToDartDateTimeNullable).toList();
List<DateTime?> fromGraphQLListNullableDateTimeToDartListDateTimeNullable(
        List<String>? dates) =>
    dates == null
        ? []
        : dates.map(fromGraphQLDateTimeToDartDateTimeNullable).toList();
List<DateTime>? fromGraphQLListNullableDateTimeToDartListNullableDateTime(
        List<String>? dates) =>
    dates == null
        ? null
        : dates.map(fromGraphQLDateTimeToDartDateTime).toList();
List<DateTime?>?
    fromGraphQLListNullableDateTimeNullableToDartListNullableDateTimeNullable(
            List<String>? dates) =>
        dates == null
            ? null
            : dates.map(fromGraphQLDateTimeToDartDateTimeNullable).toList();
List<String?> fromDartListDateTimeToGraphQLListDateTimeNullable(
        List<DateTime> dates) =>
    dates.map(fromDartDateTimeToGraphQLDateTimeNullable).toList();
List<String>? fromDartListNullableDateTimeToGraphQLListNullableDateTime(
        List<DateTime>? dates) =>
    dates == null
        ? null
        : dates.map(fromDartDateTimeToGraphQLDateTime).toList();
List<String?>?
    fromDartListNullableDateTimeNullableToGraphQLListNullableDateTimeNullable(
            List<DateTime?>? dates) =>
        dates == null
            ? null
            : dates
                .map(fromDartDateTimeNullableToGraphQLDateTimeNullable)
                .toList();
