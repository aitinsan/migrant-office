class ServerError {
  const ServerError({required this.error, required this.fields});

  factory ServerError.fromJson(Map<String, dynamic> json) => ServerError(
    error: json['error'] as String,
    fields: json['fields'] as Map<String, dynamic>?,
  );

  final String error;
  final Map<String, dynamic>? fields;

  @override
  String toString() {
    return 'error: $error \nfields: $fields';
  }
}
