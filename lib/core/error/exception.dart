class ServerException implements Exception {
  final String message;
  const ServerException(this.message);

  @override
  String toString() {
    return 'ServerException: $message';
  }
}
