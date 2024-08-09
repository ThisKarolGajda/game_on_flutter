import 'package:dio/dio.dart';
import 'package:game_on/features/chats/data/data_sources/chat_messages_cache.dart';
import 'package:game_on/features/chats/data/data_sources/gameon_chats_api.dart';
import 'package:game_on/features/chats/data/repositories/chat_messages_repository_impl.dart';
import 'package:game_on/features/news/data/data_sources/gameon_news_api.dart';
import 'package:game_on/features/servers/data/data_sources/gameon_server_api.dart';
import 'package:game_on/features/servers/data/data_sources/remote_config_server_api.dart';
import 'package:game_on/features/servers/data/data_sources/token_storage.dart';
import 'package:game_on/features/servers/data/repositories/color_panel_repository_impl.dart';
import 'package:game_on/features/servers/data/repositories/server_basic_data_repository_impl.dart';
import 'package:game_on/features/servers/data/repositories/server_features_repository_impl.dart';
import 'package:game_on/features/servers/data/repositories/server_info_repository_impl.dart';
import 'package:game_on/features/servers/presentation/bloc/server_bloc.dart';
import 'package:game_on/features/user/data/data_sources/gameon_user_api.dart';
import 'package:game_on/features/user/data/data_sources/gameon_user_daily_reward_api.dart';
import 'package:game_on/features/user/data/repositories/user_repository_impl.dart';
import 'package:game_on/features/user/presentation/bloc/user_bloc.dart';
import 'package:get_it/get_it.dart';

final get = GetIt.instance;

void setupDependencyInjection() {
  get.registerFactory(
    () {
      Map<String, dynamic> headers = {'Content-Type': 'application/json'};

      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }

      return Dio(
        BaseOptions(
          headers: headers,
        ),
      );
    },
  );

  // APIs
  get.registerLazySingleton(() => RemoteConfigServerApi());
  get.registerLazySingleton(() => GameonServerApi(get()));
  get.registerLazySingleton(() => GameonNewsApi(get()));
  get.registerLazySingleton(() => GameonUserDailyRewardApi(get()));
  get.registerLazySingleton(() => GameonUserApi(get()));
  get.registerLazySingleton(() => ChatsCache());
  get.registerLazySingleton(() => GameonChatsApi(get()));

  // Repositories
  get.registerLazySingleton(() => ServerBasicDataRepositoryImpl(get()));
  get.registerLazySingleton(() => ServerFeaturesRepositoryImpl(get()));
  get.registerLazySingleton(() => ServerInfoRepositoryImpl(get()));
  get.registerLazySingleton(() => UserRepositoryImpl(get()));
  get.registerLazySingleton(() => ColorPanelRepositoryImpl(get()));
  get.registerLazySingleton(() => ChatMessagesRepositoryImpl(get()));

  // BLoCs
  get.registerSingleton(ServerBloc(
    get<ServerBasicDataRepositoryImpl>(),
    get<ServerInfoRepositoryImpl>(),
    get<ServerFeaturesRepositoryImpl>(),
    get<ColorPanelRepositoryImpl>(),
  ));
  get.registerLazySingleton(() => UserBloc(get<UserRepositoryImpl>()));
}
