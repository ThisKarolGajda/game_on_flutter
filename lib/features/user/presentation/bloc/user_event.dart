part of 'user_bloc.dart';

sealed class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object?> get props => [];
}

final class UserSet extends UserEvent {
  final ServerBasicDataModel serverBasicDataModel;
  final String bearerToken;

  const UserSet(this.serverBasicDataModel, this.bearerToken);

  @override
  List<Object?> get props => [
        serverBasicDataModel,
        bearerToken,
      ];
}