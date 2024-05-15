import 'dart:async';

abstract class UseCase<RType, Params> {
  FutureOr<RType> call({required Params params});
}
