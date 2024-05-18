import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_type.freezed.dart';

@Freezed()
abstract class Result<T, E> with _$Result<T, E> {
  const factory Result.right(T data) = Success<T, E>;
  const factory Result.left(E failure) = Failure<T, E>;

  const Result._();

  bool get isRight => this is Success<T, E>;
  bool get isLeft => this is Failure<T, E>;
}

typedef FutureResult<T, E> = Future<Result<T, E>>;
