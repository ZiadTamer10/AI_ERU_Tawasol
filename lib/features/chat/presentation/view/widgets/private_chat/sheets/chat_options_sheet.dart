import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/shared/sheet_handle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';

class ChatOptionsSheet extends StatelessWidget {
  final ChatUser user;

  const ChatOptionsSheet({super.key, required this.user});

  static Future<void> show(BuildContext context, {required ChatUser user}) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => ChatOptionsSheet(user: user),
    );
  }

  @override
  Widget build(BuildContext context) {
    final items = [
      (Icons.search_rounded, 'Search in Conversation'),
      (Icons.notifications_off_rounded, 'Mute Notifications'),
      (Icons.block_rounded, 'Block User'),
      (Icons.delete_outline_rounded, 'Clear Chat'),
    ];

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
          ...items.map(
            (item) => ListTile(
              leading: Icon(item.$1, color: ChatColors.textSecondary),
              title: Text(
                item.$2,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: ChatColors.textPrimary,
                ),
              ),
              onTap: () => Navigator.pop(context),
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}
