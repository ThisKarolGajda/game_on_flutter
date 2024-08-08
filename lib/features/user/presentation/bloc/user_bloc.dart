import 'dart:async';

import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/data_sources/token_storage.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/presentation/bloc/server_bloc.dart';
import 'package:game_on/features/user/data/models/user_model.dart';
import 'package:game_on/features/user/domain/repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _repository;
  late Timer _timer;

  UserBloc(this._repository) : super(UserInitial()) {
    on<UserSet>(_onUserSetEvent);
    _startRefreshTimer();
  }

  void _startRefreshTimer() {
    _timer = Timer.periodic(const Duration(seconds: 15), (_) {
      if (state is UserLoaded) {
        add(UserSet((state as UserLoaded).serverModel.basicData, token!));
      }
    });
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }

  Future<void> _onUserSetEvent(UserSet event, Emitter<UserState> emit) async {
    emit(UserLoading());

    final serverModel = await _fetchServerModel(event.serverBasicDataModel);
    if (serverModel == null) {
      emit(UserException(Exception('Cannot retrieve server model.')));
      return;
    }

    await _repository
        .getUser(event.serverBasicDataModel, event.bearerToken)
        .fold(
      (exception) => emit(UserException(exception)),
      (user) {
        emit(UserLoaded(
          UserModel(basicData: user),
          serverModel,
        ));
      },
    );
  }

  Future<ServerModel?> _fetchServerModel(
      ServerBasicDataModel serverBasicDataModel) async {
    final bloc = get<ServerBloc>();

    final completer = Completer<List<ServerModel>>();
    late StreamSubscription<ServerState> subscription;

    subscription = bloc.stream.listen((state) {
      if (state is ServersLoaded) {
        completer.complete(state.servers);
        subscription.cancel();
      }
    });

    bloc.add(ServerFetch(serverBasicDataModel));
    final servers = await completer.future;
    return servers
        .where((server) => server.basicData == serverBasicDataModel)
        .firstOrNull;
  }
}
