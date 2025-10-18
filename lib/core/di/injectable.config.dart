// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_messaging/firebase_messaging.dart' as _i892;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/data/datasources/auth_remote_data_source.dart'
    as _i107;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/usecases/login_usecase.dart' as _i188;
import '../../features/auth/domain/usecases/logout_usecase.dart' as _i48;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i797;
import '../../features/contacts/data/datasources/contact_remote_data_source.dart'
    as _i971;
import '../../features/contacts/data/repositories/contact_repository_impl.dart'
    as _i929;
import '../../features/contacts/domain/usecases/get_contacts_usecase.dart'
    as _i1050;
import '../../features/contacts/presentation/bloc/contacts_bloc.dart' as _i295;
import '../../shared/services/firebase_messaging_service.dart' as _i751;
import '../logger/logger.dart' as _i512;
import '../network/dio_client.dart' as _i667;
import 'firebase_module.dart' as _i616;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final firebaseModule = _$FirebaseModule();
    gh.lazySingleton<_i512.AppLogger>(() => _i512.AppLogger());
    gh.lazySingleton<_i667.DioClient>(() => _i667.DioClient());
    gh.lazySingleton<_i892.FirebaseMessaging>(
      () => firebaseModule.firebaseMessaging,
    );
    gh.factory<_i295.ContactsBloc>(
      () => _i295.ContactsBloc(
        getContactsUseCase: gh<_i1050.GetContactsUseCase>(),
      ),
    );
    gh.lazySingleton<_i751.FirebaseMessagingService>(
      () => _i751.FirebaseMessagingService(gh<_i892.FirebaseMessaging>()),
    );
    gh.factory<_i929.ContactRepositoryImpl>(
      () => _i929.ContactRepositoryImpl(
        remoteDataSource: gh<_i971.ContactRemoteDataSource>(),
      ),
    );
    gh.factory<_i797.AuthBloc>(
      () => _i797.AuthBloc(
        loginUseCase: gh<_i188.LoginUseCase>(),
        logoutUseCase: gh<_i48.LogoutUseCase>(),
      ),
    );
    gh.factory<_i107.AuthRemoteDataSource>(
      () => _i107.AuthRemoteDataSourceImpl(dioClient: gh<_i667.DioClient>()),
    );
    gh.factory<_i153.AuthRepositoryImpl>(
      () => _i153.AuthRepositoryImpl(
        remoteDataSource: gh<_i107.AuthRemoteDataSource>(),
        sharedPreferences: gh<_i460.SharedPreferences>(),
      ),
    );
    return this;
  }
}

class _$FirebaseModule extends _i616.FirebaseModule {}
