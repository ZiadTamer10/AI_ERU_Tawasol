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
      emit(PrivateChatLoaded(messages: messages));
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
    emit(current.copyWith(messages: updated, isOtherTyping: false));
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
    emit(current.copyWith(messages: updated));
    await _repo.sendMessage(msg);
  }
}
