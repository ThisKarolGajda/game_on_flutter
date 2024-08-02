import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/server_info_model.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/presentation/bloc/server_info_list/server_info_list_bloc.dart';

class ServerCardWidget extends StatelessWidget {
  final ServerModel serverModel;

  const ServerCardWidget({
    super.key,
    required this.serverModel,
  });

  @override
  Widget build(BuildContext context) {
    List<String> features = ['MAPA', 'GILDIE', 'COŚ', 'EPICKO'];

    return BlocBuilder<ServerInfoListBloc, ServerInfoListState>(
        builder: (context, state) {
      if (state is ServerInfoListLoaded) {
        ServerInfoModel? serverInfoModel = state.get(serverModel);
        return GestureDetector(
          onTap: () {
            context.push('/servers/page', extra: {
              'serverInfoModel': serverInfoModel,
              'serverModel': serverModel,
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 14.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: serverModel.featured ? accent : secondary,
            ),
            child: buildContent(serverInfoModel, features),
          ),
        );
      }

      get<ServerInfoListBloc>().add(ServerInfoListFetchServer(serverModel));
      return Container(
        padding: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 14.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: serverModel.featured ? accent : secondary,
        ),
        height: 32.sp,
        width: 86.w,
      );
    });
  }

  Row buildContent(ServerInfoModel? infoModel, List<String> features) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.network(
          serverModel.image,
          fit: BoxFit.cover,
          width: 30.sp,
          height: 30.sp,
        ),
        SizedBox(width: 14.sp),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildTextContent(infoModel),
              buildFeatures(features),
            ],
          ),
        ),
      ],
    );
  }

  Row buildTextContent(ServerInfoModel? infoModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          serverModel.name,
          style: TextStyles.lg().copyWith(
            color: serverModel.featured ? white : text,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${infoModel?.onlinePlayers.length} graczy',
              style: TextStyles.sm().copyWith(
                color: serverModel.featured ? white : text,
              ),
            ),
            Container(
              width: 10.sp,
              height: 10.sp,
              margin: EdgeInsets.symmetric(horizontal: 0.5.h),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: infoModel == null ? Colors.red : Colors.greenAccent,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row buildFeatures(List<String> features) {
    return Row(
      children: features
          .map((feature) => Row(
                children: [
                  Text(
                    feature,
                    style: TextStyles.sm().copyWith(
                      color: serverModel.featured ? white : text,
                    ),
                  ),
                  Container(
                    width: 6.sp,
                    height: 6.sp,
                    margin: EdgeInsets.symmetric(horizontal: 0.5.h),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: serverModel.featured ? white : text,
                    ),
                  ),
                ],
              ))
          .toList(),
    );
  }
}
