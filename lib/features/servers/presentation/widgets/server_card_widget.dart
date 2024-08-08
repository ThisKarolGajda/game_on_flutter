import 'dart:async';

import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/data_sources/token_storage.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/presentation/widgets/server_features.dart';
import 'package:game_on/features/user/presentation/bloc/user_bloc.dart';

class ServerCardWidget extends StatelessWidget {
  final ServerModel serverModel;

  const ServerCardWidget({
    super.key,
    required this.serverModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => handleTap(context),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 14.sp),
        decoration: BoxDecoration(
          borderRadius: borderRadius,
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
    int? playerCount = serverModel.info?.onlinePlayers?.length;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          serverModel.basicData.name,
          style: TextStyles.lg().copyWith(
            color: serverModel.basicData.featured ? onAccent : text,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              playerCount != null ? '$playerCount graczy' : 'N/A',
              style: TextStyles.sm().copyWith(
                color: serverModel.basicData.featured ? onAccent : text,
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
      return ServerFeatures(
        serverModel: serverModel,
        addColorToFeatured: true,
      );
    } else {
      return Container();
    }
  }

  void handleTap(BuildContext context) async {
    String? token = await TokenStorage.getToken(serverModel.basicData);
    if (token == null) {
      if (context.mounted) {
        context.push('/server/preview', extra: serverModel);
      }
      return;
    }

    UserBloc userBloc = get();
    StreamSubscription<UserState>? userSubscription;

    userSubscription = userBloc.stream.listen((state) {
      print('State: $state');
      if (state is UserLoaded) {
        print('IT SHOULD MOVE TO THE PAGE RIGHT HERE< BUT DOES IT?');
        if (context.mounted) {
          context.push('/server/page');
        }
        userSubscription?.cancel();
      }
    });
    userBloc.add(UserSet(serverModel.basicData, token));
  }
}
