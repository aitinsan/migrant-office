abstract interface class ToJson {
  Map<String, dynamic> toJson();
}

class EmptyJson implements ToJson {
  const EmptyJson();

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
