import 'package:ai_eru_tawasol/features/chat/data/mock/chat_mock_data.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';
import 'package:ai_eru_tawasol/features/chat/data/repos/chat_repo.dart';

class ChatRepoImpl implements ChatRepo {
  @override
  Future<List<ChatConversation>> getConversations() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return mockConversations;
  }

  @override
  Future<List<ChatMessage>> getMessages(String userId) async {
    await Future.delayed(const Duration(milliseconds: 200));
    return getMockMessages(userId);
  }

  @override
  Future<void> sendMessage(ChatMessage message) async {
    await Future.delayed(const Duration(milliseconds: 100));
  }
}
