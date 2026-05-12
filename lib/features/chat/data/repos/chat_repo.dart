import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';

abstract class ChatRepo {
  Future<List<ChatConversation>> getConversations();
  Future<List<ChatMessage>> getMessages(String userId);
  Future<void> sendMessage(ChatMessage message);
}
