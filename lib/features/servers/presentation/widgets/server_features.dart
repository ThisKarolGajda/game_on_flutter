import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:text_scroll/text_scroll.dart';

class ServerFeatures extends StatelessWidget {
  final bool addColorToFeatured;

  const ServerFeatures({
    super.key,
    required this.serverModel,
    this.addColorToFeatured = false,
  });

  final ServerModel serverModel;

  @override
  Widget build(BuildContext context) {
    return TextScroll(
      '${serverModel.features!.features.join(' ● ')} ●',
      mode: TextScrollMode.endless,
      style: TextStyles.sm().copyWith(
        color: addColorToFeatured ? (serverModel.basicData.featured ? onAccent : text) : text,
      ),
      velocity: const Velocity(
        pixelsPerSecond: Offset(25, 0),
      ),
    );
  }
}
