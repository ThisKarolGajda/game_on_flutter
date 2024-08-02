import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/presentation/widgets/server_features.dart';

class ServerCardWidget extends StatelessWidget {
  final ServerModel serverModel;

  const ServerCardWidget({
    super.key,
    required this.serverModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/servers/page', extra: serverModel),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 14.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: serverModel.basicData.featured ? accent : secondary,
        ),
        child: buildContent(),
      ),
    );
  }

  buildContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.network(
          serverModel.basicData.image,
          fit: BoxFit.cover,
          width: 30.sp,
          height: 30.sp,
        ),
        SizedBox(width: 14.sp),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildTextContent(),
              buildFeatures(),
            ],
          ),
        ),
      ],
    );
  }

  buildTextContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          serverModel.basicData.name,
          style: TextStyles.lg().copyWith(
            color: serverModel.basicData.featured ? white : text,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${serverModel.info?.onlinePlayers.length} graczy',
              style: TextStyles.sm().copyWith(
                color: serverModel.basicData.featured ? white : text,
              ),
            ),
            Container(
              width: 10.sp,
              height: 10.sp,
              margin: EdgeInsets.symmetric(horizontal: 0.5.h),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    serverModel.info == null ? Colors.red : Colors.greenAccent,
              ),
            ),
          ],
        ),
      ],
    );
  }

  buildFeatures() {
    if (serverModel.features != null) {
      return ServerFeatures(serverModel: serverModel, addColorToFeatured: true,);
    } else {
      return Container();
    }
  }
}