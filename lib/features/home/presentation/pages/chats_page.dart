import 'package:game_on/common/util/exports.dart';
import 'package:game_on/common/util/minecraft_heads_cache.dart';
import 'package:game_on/common/util/widgets/bloc_loading_widget.dart';
import 'package:game_on/common/util/widgets/text_fields.dart';
import 'package:game_on/features/chats/data/data_sources/gameon_chats_api.dart';
import 'package:game_on/features/chats/data/model/chat_message_model.dart';
import 'package:game_on/features/chats/data/repositories/chat_messages_repository_impl.dart';
import 'package:game_on/features/chats/presentation/widgets/chat_message_widget.dart';
import 'package:game_on/features/servers/data/models/info/server_info_model.dart';
import 'package:game_on/features/user/presentation/bloc/user_bloc.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final TextEditingController _controller = TextEditingController();

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
            SizedBox(height: 2.h),
            Text(
              'Czat na serwerze',
              style: TextStyles.lg(),
            ),
            Container(
              decoration: BoxDecoration(
                color: secondary,
                borderRadius: borderRadius,
              ),
              padding: EdgeInsets.all(12.sp),
              width: 86.w,
              constraints: BoxConstraints(
                minHeight: 5.h,
                maxHeight: 50.h,
              ),
              child: StreamBuilder(
                stream: get<ChatMessagesRepositoryImpl>().getLastChats(),
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    List<ChatMessageModel> chats = snapshot.data!;
                    if (chats.isNotEmpty) {
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          ChatMessageModel chatMessageModel = chats[index];
                          return Padding(
                            padding: EdgeInsets.only(bottom: 1.h),
                            child: ChatMessageWidget(chatModel: chatMessageModel),
                          );
                        },
                        shrinkWrap: true,
                        itemCount: chats.length,
                      );
                    }

                    return Text(
                      'Oczekiwanie na wiadomości',
                      style: TextStyles.base(),
                    );
                  }

                  get<GameonChatsApi>().updateChatList();
                  return Text(
                    'Oczekiwanie na odebranie wiadomości',
                    style: TextStyles.base(),
                  );
                },
              ),
            ),
            SizedBox(height: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Container(
                    width: 65.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      borderRadius: borderRadius,
                      color: secondary,
                    ),
                    child: TextField(
                      controller: _controller,
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 1.h),
                        hintText: 'Aa',
                        hintStyle: TextStyles.sm(),
                        border: InputBorder.none,
                        icon: SizedBox(width: 1.w),
                      ),
                      style: TextStyles.lg(),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    String text = _controller.text;
                    if (text.isEmpty) {
                      return;
                    }

                    get<GameonChatsApi>().chat(text);
                    _controller.text = '';
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: accent,
                      borderRadius: borderRadius,
                    ),
                    height: 5.h,
                    width: 20.w,
                    child: Center(
                      child: Text(
                        'WYŚLIJ',
                        style: TextStyles.base().copyWith(color: onAccent),
                      ),
                    ),
                  ),
                ),
              ],
            )
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
                    MinecraftHeadCacheWidget(uuid: player.uuid),
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
