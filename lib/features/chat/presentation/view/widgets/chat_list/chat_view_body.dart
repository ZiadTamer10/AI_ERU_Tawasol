import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/manager/chat_cubit/chat_cubit.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/private_chat_view.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/chat_list/chat_new_fab.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/chat_list/header/chat_header.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/chat_list/list/chat_list_item.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/chat_list/states/chat_no_results_state.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/chat_list/states/empty_chats_state.dart';

class ChatViewBody extends StatefulWidget {
  const ChatViewBody({super.key});

  @override
  State<ChatViewBody> createState() => _ChatViewBodyState();
}

class _ChatViewBodyState extends State<ChatViewBody> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(
      () => context.read<ChatCubit>().search(_searchController.text),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _openChat(ChatConversation conversation) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => PrivateChatView(conversation: conversation),
      ),
    );
  }

  void _openNewChat() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'New chat — coming soon!',
          style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w500),
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: ChatColors.primary,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: BlocBuilder<ChatCubit, ChatState>(
        builder: (context, state) {
          if (state is ChatInitial || state is ChatLoading) {
            return const Scaffold(
              backgroundColor: ChatColors.background,
              body: Center(child: CircularProgressIndicator()),
            );
          }

          if (state is ChatError) {
            return Scaffold(
              backgroundColor: ChatColors.background,
              body: Center(child: Text(state.message)),
            );
          }

          final loaded = state as ChatLoaded;

          return Scaffold(
            backgroundColor: ChatColors.background,
            floatingActionButton: ChatNewFab(onTap: _openNewChat),
            body: Column(
              children: [
                ChatHeader(
                  isSearching: loaded.isSearching,
                  controller: _searchController,
                  onToggleSearch: () {
                    context.read<ChatCubit>().toggleSearch();
                    if (loaded.isSearching) _searchController.clear();
                  },
                  totalConversations: loaded.conversations.length,
                ),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () => context.read<ChatCubit>().refresh(),
                    color: ChatColors.primary,
                    child: loaded.filtered.isEmpty
                        ? loaded.query.isNotEmpty
                            ? ChatNoResultsState(query: loaded.query)
                            : EmptyChatsState(onNewChat: _openNewChat)
                        : ListView.separated(
                            padding: const EdgeInsets.only(bottom: 100),
                            itemCount: loaded.filtered.length,
                            separatorBuilder: (context, index) => const Divider(
                              height: 1,
                              indent: 76,
                              endIndent: 16,
                              color: ChatColors.divider,
                            ),
                            itemBuilder: (context, index) {
                              final convo = loaded.filtered[index];
                              return ChatListItem(
                                conversation: convo,
                                onTap: () => _openChat(convo),
                              );
                            },
                          ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
