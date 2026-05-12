import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';
import 'package:ai_eru_tawasol/features/chat/data/repos/chat_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit(this._repo) : super(ChatInitial());

  final ChatRepo _repo;

  Future<void> loadConversations() async {
    emit(ChatLoading());
    try {
      final conversations = await _repo.getConversations();
      emit(ChatLoaded(conversations: conversations, filtered: conversations));
    } catch (e) {
      emit(ChatError(e.toString()));
    }
  }

  void toggleSearch() {
    final current = state;
    if (current is! ChatLoaded) return;
    if (current.isSearching) {
      emit(current.copyWith(
        isSearching: false,
        query: '',
        filtered: current.conversations,
      ));
    } else {
      emit(current.copyWith(isSearching: true));
    }
  }

  void search(String query) {
    final current = state;
    if (current is! ChatLoaded) return;
    final q = query.toLowerCase();
    final filtered = q.isEmpty
        ? current.conversations
        : current.conversations.where((c) {
            final name = c.otherUser.name.toLowerCase();
            final id = c.otherUser.studentId?.toLowerCase() ?? '';
            return name.contains(q) || id.contains(q);
          }).toList();
    emit(current.copyWith(query: query, filtered: filtered));
  }

  Future<void> refresh() async {
    final current = state;
    if (current is! ChatLoaded) return;
    final conversations = await _repo.getConversations();
    emit(current.copyWith(
      conversations: conversations,
      filtered: conversations,
    ));
  }
}
