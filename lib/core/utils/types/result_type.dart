import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_type.freezed.dart';

@Freezed()
abstract class Result<T, E> with _$Result<T, E> {
  const factory Result.success(T data) = Success<T, E>;
  const factory Result.failure(E failure) = Failure<T, E>;

  const Result._();

  bool get isSuccess => this is Success<T, E>;
  bool get isFailure => this is Failure<T, E>;
}

typedef FutureResult<T, E> = Future<Result<T, E>>;
