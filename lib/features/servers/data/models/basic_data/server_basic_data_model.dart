import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_basic_data_model.freezed.dart';
part 'server_basic_data_model.g.dart';

@freezed
class ServerBasicDataModel with _$ServerBasicDataModel {
  const factory ServerBasicDataModel({
    required String name,
    required String address,
    required int port,
    required String image,
    required bool featured,
    required String description,
  }) = _ServerModel;

  factory ServerBasicDataModel.fromJson(Map<String, dynamic> json) => _$ServerBasicDataModelFromJson(json);
}