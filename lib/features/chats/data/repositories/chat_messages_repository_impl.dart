import 'package:game_on/features/chats/data/data_sources/gameon_chats_api.dart';
import 'package:game_on/features/chats/data/model/chat_message_model.dart';
import 'package:game_on/features/chats/domain/repositories/chat_messages_repository.dart';

class ChatMessagesRepositoryImpl extends ChatMessagesRepository {
  final GameonChatsApi _api;

  ChatMessagesRepositoryImpl(this._api);

  @override
  Stream<ChatMessageModel> getChatModelStream() {
    return _api.getChatModelStream();
  }

  @override
  List<ChatMessageModel> getChats() {
    return _api.getChats();
  }

  @override
  Stream<List<ChatMessageModel>> getLastChats() {
    return _api.getLastChats();
  }
}