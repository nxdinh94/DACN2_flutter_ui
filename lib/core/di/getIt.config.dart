// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_messaging/firebase_messaging.dart' as _i892;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/data/datasources/auth_remote_data_source.dart'
    as _i107;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/login_usecase.dart' as _i188;
import '../../features/auth/domain/usecases/logout_usecase.dart' as _i48;
import '../../features/auth/domain/usecases/register_usecase.dart' as _i941;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i797;
import '../../shared/blocs/locale/locale_bloc.dart' as _i190;
import '../../shared/services/firebase_messaging_service.dart' as _i751;
import '../logger/logger.dart' as _i512;
import '../network/dio_client.dart' as _i667;
import '../utils/auth_token_services.dart' as _i822;
import 'module.dart' as _i946;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final firebaseModule = _$FirebaseModule();
    gh.factory<_i190.LocaleBloc>(() => _i190.LocaleBloc());
    gh.lazySingleton<_i512.AppLogger>(() => _i512.AppLogger());
    gh.lazySingleton<_i892.FirebaseMessaging>(
      () => firebaseModule.firebaseMessaging,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => firebaseModule.secureStorage,
    );
    gh.lazySingleton<_i751.FirebaseMessagingService>(
      () => _i751.FirebaseMessagingService(gh<_i892.FirebaseMessaging>()),
    );
    gh.singleton<_i822.AuthTokenServices>(
      () => _i822.AuthTokenServices(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i667.DioClient>(
      () => _i667.DioClient(authTokenServices: gh<_i822.AuthTokenServices>()),
    );
    gh.factory<_i107.AuthRemoteDataSource>(
      () => _i107.AuthRemoteDataSourceImpl(dioClient: gh<_i667.DioClient>()),
    );
    gh.factory<_i787.AuthRepository>(
      () => _i153.AuthRepositoryImpl(
        remoteDataSource: gh<_i107.AuthRemoteDataSource>(),
        authTokenServices: gh<_i822.AuthTokenServices>(),
      ),
    );
    gh.factory<_i188.LoginUseCase>(
      () => _i188.LoginUseCase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i48.LogoutUseCase>(
      () => _i48.LogoutUseCase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i941.RegisterUseCase>(
      () => _i941.RegisterUseCase(gh<_i787.AuthRepository>()),
    );
    gh.singleton<_i797.AuthBloc>(
      () => _i797.AuthBloc(
        loginUseCase: gh<_i188.LoginUseCase>(),
        logoutUseCase: gh<_i48.LogoutUseCase>(),
        registerUseCase: gh<_i941.RegisterUseCase>(),
      ),
    );
    return this;
  }
}

class _$FirebaseModule extends _i946.FirebaseModule {}
