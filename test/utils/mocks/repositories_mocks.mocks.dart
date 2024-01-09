// Mocks generated by Mockito 5.4.4 from annotations
// in e_store/test/utils/mocks/repositories_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:e_store/core/utils/errors/server_errors.dart' as _i6;
import 'package:e_store/core/utils/types/result_type.dart' as _i2;
import 'package:e_store/features/authentication/domain/entities/user_entity.dart'
    as _i5;
import 'package:e_store/features/authentication/domain/repositories/auth_repo.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResult_0<T, E> extends _i1.SmartFake implements _i2.Result<T, E> {
  _FakeResult_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthenticationRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthenticationRepository extends _i1.Mock
    implements _i3.AuthenticationRepository {
  MockAuthenticationRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Result<_i5.UserAccountEntity, _i6.BaseException>>
      signInWithEmailPassword(
    String? email,
    String? password,
  ) =>
          (super.noSuchMethod(
            Invocation.method(
              #signInWithEmailPassword,
              [
                email,
                password,
              ],
            ),
            returnValue: _i4.Future<
                    _i2.Result<_i5.UserAccountEntity, _i6.BaseException>>.value(
                _FakeResult_0<_i5.UserAccountEntity, _i6.BaseException>(
              this,
              Invocation.method(
                #signInWithEmailPassword,
                [
                  email,
                  password,
                ],
              ),
            )),
          ) as _i4
              .Future<_i2.Result<_i5.UserAccountEntity, _i6.BaseException>>);

  @override
  _i4.Future<
      _i2
      .Result<_i5.UserAccountEntity, _i6.BaseException>> signUpEmailAndPassword(
    String? email,
    String? password,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #signUpEmailAndPassword,
          [
            email,
            password,
          ],
        ),
        returnValue: _i4
            .Future<_i2.Result<_i5.UserAccountEntity, _i6.BaseException>>.value(
            _FakeResult_0<_i5.UserAccountEntity, _i6.BaseException>(
          this,
          Invocation.method(
            #signUpEmailAndPassword,
            [
              email,
              password,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Result<_i5.UserAccountEntity, _i6.BaseException>>);

  @override
  _i4.Future<_i2.Result<_i5.UserAccountEntity, _i6.BaseException>>
      signInWithGoogle() => (super.noSuchMethod(
            Invocation.method(
              #signInWithGoogle,
              [],
            ),
            returnValue: _i4.Future<
                    _i2.Result<_i5.UserAccountEntity, _i6.BaseException>>.value(
                _FakeResult_0<_i5.UserAccountEntity, _i6.BaseException>(
              this,
              Invocation.method(
                #signInWithGoogle,
                [],
              ),
            )),
          ) as _i4
              .Future<_i2.Result<_i5.UserAccountEntity, _i6.BaseException>>);

  @override
  _i4.Future<_i2.Result<void, _i6.BaseException>> signOut() =>
      (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i4.Future<_i2.Result<void, _i6.BaseException>>.value(
            _FakeResult_0<void, _i6.BaseException>(
          this,
          Invocation.method(
            #signOut,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Result<void, _i6.BaseException>>);

  @override
  _i4.Future<_i2.Result<void, _i6.BaseException>> verifyEmail() =>
      (super.noSuchMethod(
        Invocation.method(
          #verifyEmail,
          [],
        ),
        returnValue: _i4.Future<_i2.Result<void, _i6.BaseException>>.value(
            _FakeResult_0<void, _i6.BaseException>(
          this,
          Invocation.method(
            #verifyEmail,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Result<void, _i6.BaseException>>);
}