import 'dart:convert';
import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

class Uint8ListJson implements JsonConverter<Uint8List, String> {
  const Uint8ListJson();

  @override
  Uint8List fromJson(String data) => base64Decode(data);

  @override
  String toJson(Uint8List data) => base64Encode(data);
}
