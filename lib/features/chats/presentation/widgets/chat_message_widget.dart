import 'package:game_on/common/util/exports.dart';
import 'package:game_on/common/util/minecraft_heads_cache.dart';
import 'package:game_on/features/chats/data/model/chat_message_model.dart';
import 'package:game_on/features/user/data/models/user_model.dart';
import 'package:intl/intl.dart';

class ChatMessageWidget extends StatelessWidget {
  final ChatMessageModel chatModel;

  const ChatMessageWidget({
    super.key,
    required this.chatModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                MinecraftHeadCacheWidget(
                  userId: UserModelUserId(
                      uuid: chatModel.uuid, nickname: chatModel.nickname),
                ),
                SizedBox(width: 2.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chatModel.nickname,
                      style: TextStyles.base(),
                    ),
                    Text(
                      DateFormat('HH:mm').format(chatModel.date),
                      style: TextStyles.xs(),
                    )
                  ],
                ),
              ],
            ),
            Text(
              chatModel.source,
              style: TextStyles.xs(),
            ),
          ],
        ),
        SizedBox(height: 0.5.h),
        Text(
          chatModel.message,
          style: TextStyles.sm(),
        ),
        SizedBox(height: 0.5.h),
      ],
    );
  }
}
