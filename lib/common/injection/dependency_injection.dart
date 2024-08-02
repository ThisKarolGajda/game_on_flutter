import 'package:dio/dio.dart';
import 'package:game_on/features/servers/data/data_sources/gameon_server_api.dart';
import 'package:game_on/features/servers/data/data_sources/remote_config_server_api.dart';
import 'package:game_on/features/servers/data/repositories/server_basic_data_repository_impl.dart';
import 'package:game_on/features/servers/data/repositories/server_features_repository_impl.dart';
import 'package:game_on/features/servers/data/repositories/server_info_repository_impl.dart';
import 'package:game_on/features/servers/presentation/bloc/server_bloc.dart';
import 'package:get_it/get_it.dart';

final get = GetIt.instance;

void setupDependencyInjection() {
  get.registerLazySingleton(() => Dio());

  get.registerLazySingleton(() => RemoteConfigServerApi());
  get.registerLazySingleton(() => GameonServerApi(get()));

  get.registerLazySingleton(() => ServerBasicDataRepositoryImpl(get()));
  get.registerLazySingleton(() => ServerFeaturesRepositoryImpl(get()));
  get.registerLazySingleton(() => ServerInfoRepositoryImpl(get()));

  get.registerLazySingleton(() => ServerBloc(
      get<ServerBasicDataRepositoryImpl>(),
      get<ServerInfoRepositoryImpl>(),
      get<ServerFeaturesRepositoryImpl>()));
}
