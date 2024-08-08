import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';
import 'package:game_on/features/servers/data/models/color_panel/color_panel_model.dart';
import 'package:game_on/features/servers/data/models/features/server_features_model.dart';
import 'package:game_on/features/servers/data/models/info/server_info_model.dart';

part 'server_model.freezed.dart';
part 'server_model.g.dart';

@freezed
class ServerModel with _$ServerModel {
  const factory ServerModel({
    ServerFeaturesModel? features,
    ServerInfoModel? info,
    required ServerBasicDataModel basicData,
    ColorPanelModel? colorPanel,
  }) = _ServerModel;

  factory ServerModel.fromJson(Map<String, dynamic> json) => _$ServerModelFromJson(json);
}