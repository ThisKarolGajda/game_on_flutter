part of 'user_bloc.dart';

sealed class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

final class UserInitial extends UserState {}

final class UserLoaded extends UserState {
  final UserModel userModel;
  final ServerModel serverModel;

  const UserLoaded(
    this.userModel,
    this.serverModel,
  );

  @override
  List<Object> get props => [
        userModel,
        serverModel,
      ];
}

final class UserException extends UserState {
  final Exception exception;

  const UserException(this.exception);

  @override
  List<Object> get props => [exception];
}

class UserLoading extends UserState {
  final int loadingStartTimestamp;

  UserLoading({int? loadingStartTimestamp})
      : loadingStartTimestamp = loadingStartTimestamp ??
            (DateTime.now().millisecondsSinceEpoch ~/ 1000);

  Duration get loadingDuration => Duration(
      seconds: DateTime.now().millisecondsSinceEpoch ~/ 1000 -
          loadingStartTimestamp);

  @override
  List<Object> get props => [loadingStartTimestamp];
}
