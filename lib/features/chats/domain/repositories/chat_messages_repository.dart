import 'package:game_on/features/chats/data/model/chat_message_model.dart';

abstract class ChatMessagesRepository {
  Stream<ChatMessageModel> getChatModelStream();

  List<ChatMessageModel> getChats();

  Stream<List<ChatMessageModel>> getLastChats();
}