import 'package:game_on/features/chats/data/model/chat_message_model.dart';

class ChatsCache {
  final List<ChatMessageModel> _chats = [];

  void add(ChatMessageModel chatModel) {
    if (_chats.length >= 50) {
      _chats.removeAt(0);
    }
    _chats.add(chatModel);
  }

  List<ChatMessageModel> get chats => List.unmodifiable(_chats);
}
