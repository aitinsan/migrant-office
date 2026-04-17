sealed class SnackMessage {
  SnackMessage._(this.text);

  final String text;
}

class SnackSuccessMessage implements SnackMessage {
  SnackSuccessMessage(this.text);

  @override
  final String text;
}

class SnackAttentionMessage implements SnackMessage {
  SnackAttentionMessage(this.text);

  @override
  final String text;
}
