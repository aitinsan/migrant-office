sealed class ExtendedError implements Exception {
  const ExtendedError();
}

class NoConnectionError extends ExtendedError {
  const NoConnectionError();
}

class ParseError extends ExtendedError {
  const ParseError();
}
