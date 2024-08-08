import 'package:game_on/common/util/exports.dart';
import 'package:game_on/common/util/widgets/bloc_loading_widget.dart';
import 'package:game_on/common/util/widgets/text_fields.dart';
import 'package:game_on/features/servers/data/models/info/server_info_model.dart';
import 'package:game_on/features/user/presentation/bloc/user_bloc.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 1.h),
            buildChatSearch(),
            SizedBox(height: 2.h),
            buildPlayersQuickAccess(),
          ],
        ),
      ),
    );
  }

  buildChatSearch() {
    return const DefaultTextField(
      hintText: 'Szukaj',
      prefixIcon: Icons.search,
    );
  }

  buildPlayersQuickAccess() {
    return BlocLoadingWidget<UserBloc, UserState>(
      expectedState: UserLoaded,
      builder: (context, state) {
        if (state is! UserLoaded) {
          return Container();
        }

        UserLoaded loaded = state;
        List<OnlinePlayer> players =
            loaded.serverModel.info?.onlinePlayers ?? [];
        return SizedBox(
          height: 8.h,
          child: ListView.builder(
            itemBuilder: (context, index) {
              OnlinePlayer player = players[index];
              return SizedBox(
                width: 22.w,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: borderRadius,
                      child: Image.network(
                        'https://mc-heads.net/avatar/${player.uuid}',
                        fit: BoxFit.cover,
                        height: 5.h,
                        width: 5.h,
                      ),
                    ),
                    Text(
                      player.username,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.sm(),
                    ),
                  ],
                ),
              );
            },
            itemCount: players.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}
