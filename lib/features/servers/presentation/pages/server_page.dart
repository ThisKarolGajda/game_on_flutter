import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/server_info_model.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';

class ServerPage extends StatelessWidget {
  final ServerInfoModel serverInfoModel;
  final ServerModel serverModel;

  const ServerPage({
    super.key,
    required this.serverInfoModel,
    required this.serverModel,
  });

  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil(
      body: buildBody(context),
      appBar: const ReturnAppBar(title: 'Podgląd serwera'),
    );
  }

  buildBody(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }
}
