import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/private_chat/sheets/chat_option_tile.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/shared/sheet_handle.dart';

class ChatOptionsSheet extends StatelessWidget {
  final ChatUser user;
  final void Function(ChatOption) onOptionSelected;

  const ChatOptionsSheet({
    super.key,
    required this.user,
    required this.onOptionSelected,
  });

  static Future<void> show(
    BuildContext context, {
    required ChatUser user,
    required void Function(ChatOption) onOptionSelected,
  }) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => ChatOptionsSheet(
        user: user,
        onOptionSelected: onOptionSelected,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 28),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SheetHandle(),
          const SizedBox(height: 20),
          ...ChatOption.values.map(
            (option) => ChatOptionTile(
              option: option,
              onTap: () {
                Navigator.pop(context);
                onOptionSelected(option);
              },
            ),
          ),
        ],
      ),
    );
  }
}
