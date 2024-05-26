import 'package:e_store/core/shared/logic/services/network_manager.dart';
import 'package:e_store/core/shared/logic/services/storage_utility.dart';
import 'package:e_store/core/utils/logging/logger.dart';
import 'package:e_store/features/authentication/data/datasources/remote/firebase_user_authentication/firebase_authentication.dart';
import 'package:e_store/features/authentication/data/datasources/remote/firebase_user_authentication/firebase_authentication_impl.dart';
import 'package:e_store/features/authentication/data/datasources/remote/user_cloud/user_cloud.dart';
import 'package:e_store/features/authentication/data/datasources/remote/user_cloud/user_cloud_impl.dart';
import 'package:e_store/features/authentication/data/repositories/auth_repo_impl.dart';
import 'package:e_store/features/authentication/domain/repositories/auth_repo.dart';
import 'package:e_store/features/authentication/domain/usecases/auth_status_changes.dart';
import 'package:e_store/features/authentication/domain/usecases/is_user_verified.dart';
import 'package:e_store/features/authentication/domain/usecases/send_reset_email.dart';
import 'package:e_store/features/authentication/domain/usecases/signin_email_and_password.dart';
import 'package:e_store/features/authentication/domain/usecases/signin_google.dart';
import 'package:e_store/features/authentication/domain/usecases/signup_email_and_password.dart';
import 'package:e_store/features/authentication/domain/usecases/user_email_send_verify.dart';
import 'package:e_store/features/authentication/presentation/blocs/google_auth_cubit/google_auth_cubit.dart';
import 'package:e_store/features/authentication/presentation/blocs/login_cubit/login_cubit.dart';
import 'package:e_store/features/authentication/presentation/blocs/signup_cubit/signup_cubit.dart';
import 'package:e_store/features/authentication/presentation/blocs/verify_email_cubit/verify_email_cubit_cubit.dart';
import 'package:e_store/core/shared/logic/blocs/redirect_first_route/redirect_route_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> initializeDependence() async {
  /// Register services

  sl.registerLazySingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );
  await GetIt.instance.isReady<SharedPreferences>();

  sl.registerLazySingleton<LocalStorageManager>(() => LocalStorageManager(sl()));
  sl.registerLazySingleton<NetworkManager>(() => NetworkManager.instance);
  sl.registerLazySingleton<UserCloudService>(() => UserCloudServiceImpl());
  sl.registerLazySingleton<LoggerHelper>(() => LoggerHelper());

  /// Register dataSources
  sl.registerLazySingleton<AuthenticationRemoteDataSource>(
    () => AuthenticationRemoteDataSourceImpl(
      userCloudService: sl(),
    ),
  );

  /// Register repositories
  sl.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(remoteDataSource: sl(), networkManager: sl()),
  );

  /// Usecases
  sl.registerLazySingleton(() => SignInWithMailPasswordUseCase(sl()));
  sl.registerLazySingleton(() => SignInWithGoogleUseCase(sl()));
  sl.registerLazySingleton(() => IsUserVerifiedUseCase(sl()));
  sl.registerLazySingleton(() => SignUpUseCase(sl()));
  sl.registerLazySingleton(() => VerifyEmailUseCase(sl()));
  sl.registerLazySingleton(() => AuthChangesStateUseCase(sl()));
  sl.registerLazySingleton(() => SendResetPasswordEmailUseCase(sl()));

  /// Register Controllers (Cubits)
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl(), sl()));
  sl.registerFactory<GoogleAuthCubit>(() => GoogleAuthCubit(sl()));
  sl.registerFactory<SignUpCubit>(() => SignUpCubit(sl()));
  sl.registerFactory<VerifyEmailCubit>(() => VerifyEmailCubit(
        isUserVerified: sl(),
        verifyEmailUsecase: sl(),
      ));
  sl.registerFactory<RedirectFirstRouteBloc>(() => RedirectFirstRouteBloc(sl()));
}
