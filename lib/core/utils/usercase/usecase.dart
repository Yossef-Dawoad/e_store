abstract class UseCase<RType, Params> {
  Future<RType> call({required Params params});
}
