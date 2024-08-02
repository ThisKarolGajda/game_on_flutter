import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/domain/repositories/server_repository.dart';

part 'server_state.dart';
part 'server_event.dart';

class ServerBloc extends Bloc<ServerEvent, ServerState> {
  final ServerRepository _repository;

  ServerBloc(this._repository) : super(ServerInitial()) {
    on<ServerLoadList>(_onServerLoadListEvent);
  }

  _onServerLoadListEvent(ServerLoadList event, Emitter<ServerState> emit) async {
    await _repository.getServers().fold(
          (exception) => emit(ServerListError(exception)),
          (list) => emit(ServerListLoaded(list)),
        );
  }
}
