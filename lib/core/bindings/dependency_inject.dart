import 'package:e_store/core/utils/helpers/network_manager.dart';
import 'package:e_store/features/authentication/data/datasources/remote/firebase_user_authentication/firebase_authentication.dart';
import 'package:e_store/features/authentication/data/datasources/remote/firebase_user_authentication/firebase_authentication_impl.dart';
import 'package:e_store/features/authentication/data/datasources/remote/user_cloud/user_cloud.dart';
import 'package:e_store/features/authentication/data/datasources/remote/user_cloud/user_cloud_impl.dart';
import 'package:e_store/features/authentication/data/repositories/auth_repo_impl.dart';
import 'package:e_store/features/authentication/domain/repositories/auth_repo.dart';
import 'package:e_store/features/authentication/domain/usecases/signin_email_and_password.dart';
import 'package:e_store/features/authentication/domain/usecases/signin_google.dart';
import 'package:e_store/features/authentication/domain/usecases/signup_email_and_password.dart';
import 'package:e_store/features/authentication/domain/usecases/user_email_verify.dart';
import 'package:e_store/features/authentication/view/blocs/google_auth_cubit/google_auth_cubit.dart';
import 'package:e_store/features/authentication/view/blocs/login_cubit/login_cubit.dart';
import 'package:e_store/features/authentication/view/blocs/signup_cubit/signup_cubit.dart';
import 'package:e_store/features/authentication/view/blocs/verify_email_cubit/verify_email_cubit_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

final sl = GetIt.instance;

Future<void> initializeDependence() async {
  /// Register services
  sl.registerLazySingleton(() => GetStorage());
  sl.registerLazySingleton<NetworkManager>(() => NetworkManager.instance);
  sl.registerLazySingleton<UserCloudService>(() => UserCloudServiceImpl());

  /// Register dataSources
  sl.registerLazySingleton<AuthenticationRemoteDataSource>(
    () => AuthenticationRemoteDataSourceImpl(
      localStorage: sl(),
      userCloudService: sl(),
    ),
  );

  /// Register repositories
  sl.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(remoteDataSource: sl()),
  );

  /// Usecases
  sl.registerLazySingleton(
    () => SignInWithMailPasswordUseCase(sl()),
  );
  sl.registerLazySingleton(
    () => SignInWithGoogleUseCase(sl()),
  );

  sl.registerLazySingleton(() => SignUpUseCase(sl()));
  sl.registerLazySingleton(() => VerifyEmailUseCase(sl()));

  /// Register Controllers (Cubits)
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));
  sl.registerFactory<GoogleAuthCubit>(() => GoogleAuthCubit(sl()));
  sl.registerFactory<SignUpCubit>(() => SignUpCubit(sl()));
  sl.registerFactory<VerifyEmailCubit>(() => VerifyEmailCubit(sl()));
}
