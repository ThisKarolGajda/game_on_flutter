part of 'server_bloc.dart';

sealed class ServerEvent extends Equatable {
  const ServerEvent();

  @override
  List<Object?> get props => [];
}

final class ServerLoadList extends ServerEvent {

}
