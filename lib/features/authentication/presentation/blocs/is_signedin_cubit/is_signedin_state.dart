part of 'is_signedin_cubit.dart';

@freezed
class IsSignedinState with _$IsSignedinState {
  const factory IsSignedinState.initial() = _Initial;
  const factory IsSignedinState.authentecationPending() = authentecationPending;
  const factory IsSignedinState.authentecatedUser(bool isLogedin) =
      AuthentecatedUser;
  const factory IsSignedinState.notAuthentecatedUser(String msg) =
      NotAuthentecatedUser;
}
