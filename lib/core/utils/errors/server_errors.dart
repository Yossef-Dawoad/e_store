class BaseException implements Exception {
  final String msg;
  final StackTrace? stackTrace;

  BaseException({required this.msg, this.stackTrace});
  // implemnt toString method
  @override
  String toString() => msg;
}
