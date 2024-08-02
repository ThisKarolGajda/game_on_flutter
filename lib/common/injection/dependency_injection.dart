import 'package:dio/dio.dart';
import 'package:game_on/features/servers/data/data_sources/gameon_server_api.dart';
import 'package:game_on/features/servers/data/data_sources/remote_config_server_api.dart';
import 'package:game_on/features/servers/data/repositories/server_info_repository_impl.dart';
import 'package:game_on/features/servers/data/repositories/server_repository_impl.dart';
import 'package:game_on/features/servers/presentation/bloc/server/server_bloc.dart';
import 'package:game_on/features/servers/presentation/bloc/server_info_list/server_info_list_bloc.dart';
import 'package:get_it/get_it.dart';

final get = GetIt.instance;

void setupDependencyInjection() {
  get.registerLazySingleton(() => Dio());

  get.registerLazySingleton(() => RemoteConfigServerApi());
  get.registerLazySingleton(() => ServerRepositoryImpl(get()));
  get.registerLazySingleton(() => ServerBloc(get<ServerRepositoryImpl>()));

  get.registerLazySingleton(() => GameonServerApi(get()));
  get.registerLazySingleton(() => ServerInfoRepositoryImpl(get()));
  get.registerLazySingleton(() => ServerInfoListBloc(get<ServerInfoRepositoryImpl>()));
}