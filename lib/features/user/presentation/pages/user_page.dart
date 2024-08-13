import 'package:carousel_slider/carousel_slider.dart';
import 'package:game_on/common/util/exports.dart';
import 'package:game_on/common/util/minecraft_heads_cache.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/stats/data/data_sources/gameon_stats_api.dart';
import 'package:game_on/features/stats/presentation/widgets/stats_widget.dart';
import 'package:game_on/features/user/data/data_sources/gameon_user_api.dart';
import 'package:game_on/features/user/data/models/user_model.dart';
import 'package:game_on/features/user/presentation/bloc/user_bloc.dart';
import 'package:intl/intl.dart';

class UserPage extends StatefulWidget {
  final UserModel userModel;

  const UserPage({
    super.key,
    required this.userModel,
  });

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil(
      appBar: const ReturnAppBar(title: 'Profil gracza'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 2.h),
                buildPlayerInfo(),
                SizedBox(height: 4.h),
                buildStats(),
                SizedBox(height: 4.h),
                buildKills(),
                SizedBox(height: 4.h),
                buildDeaths(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildDeaths() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Śmierci gracza',
          style: TextStyles.lg(),
        ),
        CarouselSlider(
          items: widget.userModel.playerDeaths
              .map((kill) => buildDeathWidget(kill))
              .toList(),
          options: CarouselOptions(
            reverse: true,
            height: 10.h,
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: false,
            viewportFraction: 0.5,
            initialPage: widget.userModel.playerDeaths.isNotEmpty
                ? widget.userModel.playerDeaths.length - 1
                : 0,
          ),
        ),
      ],
    );
  }

  Widget buildDeathWidget(UserModelPlayerDeath death) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.sp),
      decoration: BoxDecoration(
        color: secondary,
        borderRadius: borderRadius,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(death.object ?? ''),
        ],
      ),
    );
  }

  buildKills() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Zabójstwa gracza',
          style: TextStyles.lg(),
        ),
        CarouselSlider(
          items: widget.userModel.playerKills
              .map((kill) => buildKillWidget(kill))
              .toList(),
          options: CarouselOptions(
            reverse: true,
            height: 10.h,
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: false,
            viewportFraction: 0.5,
            initialPage: widget.userModel.playerKills.isNotEmpty
                ? widget.userModel.playerKills.length - 1
                : 0,
          ),
        ),
      ],
    );
  }

  Widget buildKillWidget(UserModelPlayerKill kill) {
    return GestureDetector(
      onTap: () async {
        UserBloc bloc = get();
        if (bloc.state is! UserLoaded) {
          return;
        }

        ServerModel server = (bloc.state as UserLoaded).serverModel;
        UserModel? user = await get<GameonUserApi>().getUserFromUserId(server.basicData.address, server.basicData.port, kill.killed);
        if (user != null && mounted) {
          context.push('/user/page', extra: user);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.sp),
        decoration: BoxDecoration(
          color: secondary,
          borderRadius: borderRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MinecraftHeadCacheWidget(userId: kill.killed),
            SizedBox(width: 2.w),
            SizedBox(
              width: 25.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    kill.killed.nickname,
                    style: TextStyles.base(),
                    maxLines: 1,
                  ),
                  Text(
                    kill.killType,
                    style: TextStyles.sm(),
                  ),
                  Text(
                    DateFormat('EEEE, HH:mm', 'pl_PL').format(kill.date),
                    style: TextStyles.sm(),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildStats() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Statystyki gracza',
          style: TextStyles.lg(),
        ),
        Builder(builder: (context) {
          UserState state = get<UserBloc>().state;
          if (state is! UserLoaded) {
            return Container();
          }

          return FutureBuilder(
            future: get<GameonStatsApi>().getUserStats(
              state.serverModel.basicData.address,
              state.serverModel.basicData.port,
              uuid: widget.userModel.userId.uuid
            ),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return Container();
              }

              return StatsWidget(
                userModel: snapshot.data,
              );
            },
          );
        }),
      ],
    );
  }

  buildPlayerInfo() {
    return Row(
      children: [
        MinecraftHeadCacheWidget(
          userId: widget.userModel.userId,
          height: 10.h,
          width: 10.h,
          bust: true,
        ),
        SizedBox(width: 2.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  widget.userModel.userId.nickname,
                  style: TextStyles.base(),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Container(
                  width: 1.h,
                  height: 1.h,
                  decoration: BoxDecoration(
                    color: widget.userModel.isOnline() ? Colors.green : Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            Text(
              'Ostatnia gra: ${DateFormat('EEEE, HH:mm', 'pl_PL').format(widget.userModel.lastJoinDate)}',
              style: TextStyles.sm(),
            ),
            Text(
              'Pierwsza gra: ${DateFormat('EEEE, HH:mm', 'pl_PL').format(widget.userModel.firstJoinDate)}',
              style: TextStyles.sm(),
            ),
          ],
        ),
      ],
    );
  }
}
