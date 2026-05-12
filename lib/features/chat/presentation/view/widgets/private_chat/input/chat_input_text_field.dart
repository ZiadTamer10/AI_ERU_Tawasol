import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/shared/chat_icon_button.dart';

class ChatInputTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final VoidCallback onSubmit;

  const ChatInputTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 44, maxHeight: 130),
      decoration: BoxDecoration(
        color: ChatColors.inputBg,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: focusNode.hasFocus
              ? ChatColors.primary.withValues(alpha: 0.4)
              : Colors.transparent,
          width: 1.5,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(width: 16),
          Expanded(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              textCapitalization: TextCapitalization.sentences,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14.5,
                color: ChatColors.textPrimary,
              ),
              decoration: InputDecoration(
                hintText: 'Type a message…',
                hintStyle: GoogleFonts.plusJakartaSans(
                  fontSize: 14.5,
                  color: ChatColors.textHint,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 11),
                isDense: true,
              ),
              onSubmitted: (_) => onSubmit(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 4, bottom: 4),
            child: ChatIconButton(
              icon: Icons.emoji_emotions_outlined,
              color: ChatColors.textHint,
              size: 20,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
