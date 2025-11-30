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
import '../../features/create_post/data/data_source/create_post_data_source.dart'
    as _i181;
import '../../features/create_post/data/repositories/create_post_repository_impl.dart'
    as _i918;
import '../../features/create_post/domain/repositories/create_post_repository.dart'
    as _i244;
import '../../features/create_post/domain/usecases/create_post_usecase.dart'
    as _i528;
import '../../features/create_post/presentation/bloc/cache_thumbnail_video.dart'
    as _i800;
import '../../features/create_post/presentation/bloc/create_post_bloc.dart'
    as _i491;
import '../../features/home/data_source/remote/home_remote_data_source.dart'
    as _i364;
import '../../features/home/data_source/repository/home_repository.dart'
    as _i989;
import '../../features/home/presentation/bloc/home_bloc/for_you_bloc.dart'
    as _i600;
import '../../features/post_interaction/data_source/remote/post_interaction_remote_data_source.dart'
    as _i209;
import '../../features/post_interaction/data_source/repository/post_interaction_repository.dart'
    as _i185;
import '../../features/post_interaction/presentation/bloc/post_interaction_bloc.dart'
    as _i875;
import '../../features/profile/data_source/local/profile_local_data_source.dart'
    as _i911;
import '../../features/profile/data_source/remote/profile_remote_data_source.dart'
    as _i156;
import '../../features/profile/data_source/repository/profile_repository.dart'
    as _i741;
import '../../features/profile/presentation/bloc/posts_bloc/posts_bloc.dart'
    as _i873;
import '../../features/profile/presentation/bloc/profile_bloc/profile_bloc.dart'
    as _i932;
import '../../shared/blocs/locale/locale_bloc.dart' as _i190;
import '../../shared/services/firebase_messaging_service.dart' as _i751;
import '../../shared/services/upload_media.dart' as _i182;
import '../../shared/services/upload_post_media.dart' as _i931;
import '../logger/logger.dart' as _i512;
import '../network/dio_client.dart' as _i667;
import '../network/hive_client.dart' as _i980;
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
    gh.factory<_i800.CacheThumbnailVideo>(() => _i800.CacheThumbnailVideo());
    gh.factory<_i190.LocaleBloc>(() => _i190.LocaleBloc());
    gh.lazySingleton<_i892.FirebaseMessaging>(
      () => firebaseModule.firebaseMessaging,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => firebaseModule.secureStorage,
    );
    gh.lazySingleton<_i512.AppLogger>(() => _i512.AppLogger());
    gh.lazySingleton<_i980.HiveClient>(() => _i980.HiveClient());
    gh.factory<_i911.ProfileLocalDataSource>(
      () => _i911.ProfileLocalDataSourceImpl(gh<_i980.HiveClient>()),
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
    gh.factory<_i182.UploadMediaService>(
      () => _i182.UploadMediaServiceImpl(gh<_i667.DioClient>()),
    );
    gh.factory<_i156.ProfileRemoteDataSource>(
      () => _i156.ProfileRemoteDataSourceImpl(gh<_i667.DioClient>()),
    );
    gh.factory<_i931.UploadMediaPostService>(
      () => _i931.UploadMediaPostServiceImpl(gh<_i667.DioClient>()),
    );
    gh.factory<_i741.ProfileRepository>(
      () => _i741.ProfileRepositoryImpl(
        gh<_i156.ProfileRemoteDataSource>(),
        gh<_i182.UploadMediaService>(),
        gh<_i911.ProfileLocalDataSource>(),
      ),
    );
    gh.factory<_i209.PostInteractionRemoteDataSource>(
      () => _i209.PostInteractionRemoteDataSourceImpl(
        dioClient: gh<_i667.DioClient>(),
      ),
    );
    gh.factory<_i181.CreatePostDataSource>(
      () => _i181.CreatePostDataSourceImpl(gh<_i667.DioClient>()),
    );
    gh.factory<_i932.ProfileBloc>(
      () => _i932.ProfileBloc(profileRepository: gh<_i741.ProfileRepository>()),
    );
    gh.factory<_i873.PostsBloc>(
      () => _i873.PostsBloc(gh<_i741.ProfileRepository>()),
    );
    gh.factory<_i364.HomeRemoteDataSource>(
      () => _i364.HomeRemoteDataSourceImpl(dioClient: gh<_i667.DioClient>()),
    );
    gh.factory<_i107.AuthRemoteDataSource>(
      () => _i107.AuthRemoteDataSourceImpl(dioClient: gh<_i667.DioClient>()),
    );
    gh.factory<_i185.PostInteractionRepository>(
      () => _i185.PostInteractionRepositoryImpl(
        gh<_i209.PostInteractionRemoteDataSource>(),
      ),
    );
    gh.factory<_i787.AuthRepository>(
      () => _i153.AuthRepositoryImpl(
        remoteDataSource: gh<_i107.AuthRemoteDataSource>(),
        authTokenServices: gh<_i822.AuthTokenServices>(),
        hiveClient: gh<_i980.HiveClient>(),
      ),
    );
    gh.factory<_i244.CreatePostRepository>(
      () => _i918.CreatePostRepositoryImpl(
        gh<_i181.CreatePostDataSource>(),
        gh<_i931.UploadMediaPostService>(),
      ),
    );
    gh.factory<_i989.HomeRepository>(
      () => _i989.HomeRepositoryImpl(gh<_i364.HomeRemoteDataSource>()),
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
    gh.factory<_i528.CreatePostUseCase>(
      () => _i528.CreatePostUseCase(gh<_i244.CreatePostRepository>()),
    );
    gh.factory<_i875.PostInteractionBloc>(
      () => _i875.PostInteractionBloc(gh<_i185.PostInteractionRepository>()),
    );
    gh.factory<_i491.CreatePostBloc>(
      () => _i491.CreatePostBloc(gh<_i528.CreatePostUseCase>()),
    );
    gh.singleton<_i797.AuthBloc>(
      () => _i797.AuthBloc(
        loginUseCase: gh<_i188.LoginUseCase>(),
        logoutUseCase: gh<_i48.LogoutUseCase>(),
        registerUseCase: gh<_i941.RegisterUseCase>(),
      ),
    );
    gh.factory<_i600.HomeBloc>(
      () => _i600.HomeBloc(gh<_i989.HomeRepository>()),
    );
    return this;
  }
}

class _$FirebaseModule extends _i946.FirebaseModule {}
