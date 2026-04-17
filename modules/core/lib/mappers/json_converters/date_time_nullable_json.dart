import 'package:json_annotation/json_annotation.dart';

class DateTimeNullableJson implements JsonConverter<DateTime?, String?> {
  const DateTimeNullableJson();

  @override
  DateTime? fromJson(String? string) =>
      string == null ? null : DateTime.tryParse(string);

  @override
  String? toJson(DateTime? dateTime) => dateTime.toString();
}
