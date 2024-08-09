import 'dart:async';
import 'dart:convert';

import 'package:game_on/features/chats/data/data_sources/chat_messages_cache.dart';
import 'package:game_on/features/chats/data/model/chat_message_model.dart';
import 'package:game_on/features/servers/data/data_sources/token_storage.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class GameonChatsApi {
  final ChatsCache _cache;
  late final WebSocketChannel _channel;
  final StreamController<ChatMessageModel> _chatModelController =
      StreamController<ChatMessageModel>.broadcast();
  final StreamController<List<ChatMessageModel>> _chatListModelController =
      StreamController<List<ChatMessageModel>>.broadcast();

  GameonChatsApi(this._cache) {
    //todo add real server - get it from current user
    _channel = IOWebSocketChannel.connect(
      'ws://192.168.1.35:8080/api/v1/player-chat/chat',
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    _channel.stream.listen((data) {
      if (data != null) {
        ChatMessageModel chatModel =
            ChatMessageModel.fromJson(jsonDecode(data));
        _cache.add(chatModel);
        _chatModelController.add(chatModel);
        _chatListModelController.add(_cache.chats);
      }
    });
  }

  Stream<ChatMessageModel> getChatModelStream() {
    return _chatModelController.stream;
  }

  List<ChatMessageModel> getChats() {
    return _cache.chats;
  }

  Stream<List<ChatMessageModel>> getLastChats() {
    return _chatListModelController.stream;
  }

  void updateChatList() {
    List<ChatMessageModel> lastChats = _cache.chats;
    _chatListModelController.add(lastChats);
  }

  void dispose() {
    _chatModelController.close();
    _channel.sink.close();
  }

  void chat(String text) {
    _channel.sink.add(jsonEncode({
      'message': text,
      'source': 'GameOn Mobile App',
    }));
  }
}
