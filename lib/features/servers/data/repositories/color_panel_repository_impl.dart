import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/data_sources/gameon_server_api.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';
import 'package:game_on/features/servers/data/models/color_panel/color_panel_model.dart';
import 'package:game_on/features/servers/domain/repositories/color_panel_repository.dart';

class ColorPanelRepositoryImpl extends ColorPanelRepository {
  final GameonServerApi _api;

  ColorPanelRepositoryImpl(this._api);

  @override
  Future<Either<Exception, ColorPanelModel>> fetchColorPanel(ServerBasicDataModel server) async {
    ColorPanelModel? colorPanel = await _api.getColorPanel(server.address, server.port);
    if (colorPanel == null) {
      return Left(Exception('Cannot fetch color panel'));
    }

    return Right(colorPanel);
  }

}