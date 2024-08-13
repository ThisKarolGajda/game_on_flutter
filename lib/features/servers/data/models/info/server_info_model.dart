import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_on/features/user/data/models/user_model.dart';

part 'server_info_model.freezed.dart';
part 'server_info_model.g.dart';

@freezed
class ServerInfoModel with _$ServerInfoModel {
  const factory ServerInfoModel({
    required String version,
    required String gameonVersion,
    required int maxPlayers,
    required List<UserModelUserId>? onlinePlayers,
    required String motd,
    required DateTime uptime,
    required List<String>? allowedDimensions,
    required int idleTimeout,
    required List<String>? enabledPacks,
    required List<String>? disabledPacks,
    required String defaultGameMode,
    required int simulationDistance,
    required List<String>? worlds,
    required int viewDistance,
    required String name,
    required String address,
    @JsonValue('whitelistedPlayers') required List<String>? whitelistedPlayerUuids,
    @JsonValue('bannedUsers') required List<String>? bannedUserUuids,
  }) = _ServerInfoModel;

  factory ServerInfoModel.fromJson(Map<String, dynamic> json) => _$ServerInfoModelFromJson(json);
}