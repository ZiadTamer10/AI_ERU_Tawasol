import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/manager/private_chat_cubit/private_chat_cubit.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/private_chat/app_bar/chat_app_bar_avatar.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/private_chat/app_bar/chat_app_bar_user_info.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/private_chat/sheets/chat_options_sheet.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ChatUser user;

  const ChatAppBar({super.key, required this.user});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 1);

  void _handleOption(BuildContext context, ChatOption option) {
    switch (option) {
      case ChatOption.search:
        context.read<PrivateChatCubit>().toggleSearch();
        break;
      case ChatOption.mute:
        break;
      case ChatOption.block:
        break;
      case ChatOption.clearChat:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [ChatColors.primaryDark, ChatColors.primary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x22003096),
            blurRadius: 12,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SafeArea(
        bottom: false,
        child: SizedBox(
          height: kToolbarHeight,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: Colors.white, size: 20),
                onPressed: () => Navigator.pop(context),
              ),
              ChatAppBarAvatar(user: user),
              const SizedBox(width: 10),
              Expanded(child: ChatAppBarUserInfo(user: user)),
              IconButton(
                icon: const Icon(Icons.more_vert_rounded,
                    color: Colors.white, size: 22),
                onPressed: () => ChatOptionsSheet.show(
                  context,
                  user: user,
                  onOptionSelected: (option) =>
                      _handleOption(context, option),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
