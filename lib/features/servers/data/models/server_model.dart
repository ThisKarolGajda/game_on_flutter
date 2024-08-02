import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_model.freezed.dart';
part 'server_model.g.dart';

@freezed
class ServerModel with _$ServerModel {
  const factory ServerModel({
    required String name,
    required String address,
    required int port,
    required String image,
    required bool featured,
    required String description,
  }) = _ServerModel;

  factory ServerModel.fromJson(Map<String, dynamic> json) => _$ServerModelFromJson(json);
}

@freezed
class ServerList with _$ServerList {
  const factory ServerList({
    required List<ServerModel> servers,
  }) = _ServerList;

  factory ServerList.fromJson(Map<String, dynamic> json) => _$ServerListFromJson(json);
}
