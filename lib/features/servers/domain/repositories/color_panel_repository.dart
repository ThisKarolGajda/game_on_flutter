import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';
import 'package:game_on/features/servers/data/models/color_panel/color_panel_model.dart';

abstract class ColorPanelRepository {

  Future<Either<Exception, ColorPanelModel>> fetchColorPanel(ServerBasicDataModel server);

}