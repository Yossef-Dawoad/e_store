class BaseNetworkException implements Exception {
  final String msg;
  final StackTrace? stackTrace;

  BaseNetworkException({required this.msg, this.stackTrace});
  // implemnt toString method
  @override
  String toString() => msg;
}
