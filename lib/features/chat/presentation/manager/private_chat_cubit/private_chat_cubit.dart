import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';
import 'package:ai_eru_tawasol/features/chat/data/repos/chat_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'private_chat_state.dart';

class PrivateChatCubit extends Cubit<PrivateChatState> {
  PrivateChatCubit(this._repo) : super(PrivateChatInitial());

  final ChatRepo _repo;

  Future<void> loadMessages(String userId) async {
    emit(PrivateChatLoading());
    try {
      final messages = await _repo.getMessages(userId);
      emit(PrivateChatLoaded(messages: messages, filteredMessages: messages));
      _simulateTyping();
    } catch (e) {
      emit(PrivateChatError(e.toString()));
    }
  }

  void _simulateTyping() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!isClosed && state is PrivateChatLoaded) {
      emit((state as PrivateChatLoaded).copyWith(isOtherTyping: true));
    }
  }

  Future<void> sendTextMessage(String text) async {
    final current = state;
    if (current is! PrivateChatLoaded) return;
    final msg = ChatMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      senderId: 'me',
      type: MessageType.text,
      text: text,
      timestamp: DateTime.now(),
      status: MessageStatus.sent,
      isFromMe: true,
    );
    final updated = List<ChatMessage>.from(current.messages)..add(msg);
    emit(current.copyWith(messages: updated, filteredMessages: updated, isOtherTyping: false));
    await _repo.sendMessage(msg);
  }

  Future<void> sendVoiceMessage() async {
    final current = state;
    if (current is! PrivateChatLoaded) return;
    final msg = ChatMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      senderId: 'me',
      type: MessageType.voice,
      voiceDuration: const Duration(seconds: 5),
      timestamp: DateTime.now(),
      status: MessageStatus.sent,
      isFromMe: true,
    );
    final updated = List<ChatMessage>.from(current.messages)..add(msg);
    emit(current.copyWith(messages: updated, filteredMessages: updated));
    await _repo.sendMessage(msg);
  }

  void toggleSearch() {
    final current = state;
    if (current is! PrivateChatLoaded) return;
    emit(current.copyWith(
      isSearching: !current.isSearching,
      searchQuery: '',
      filteredMessages: current.messages,
    ));
  }

  void searchMessages(String query) {
    final current = state;
    if (current is! PrivateChatLoaded) return;
    final filtered = query.isEmpty
        ? current.messages
        : current.messages
            .where((m) =>
                m.text?.toLowerCase().contains(query.toLowerCase()) ?? false)
            .toList();
    emit(current.copyWith(
      searchQuery: query,
      filteredMessages: filtered,
    ));
  }
}
