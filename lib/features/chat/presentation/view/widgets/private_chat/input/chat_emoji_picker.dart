import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';

class ChatEmojiPicker extends StatelessWidget {
  final TextEditingController controller;
  final double height;

  const ChatEmojiPicker({
    super.key,
    required this.controller,
    this.height = 256,
  });

  @override
  Widget build(BuildContext context) {
    return EmojiPicker(
      textEditingController: controller,
      config: Config(
        height: height,
        checkPlatformCompatibility: false,
        emojiViewConfig: const EmojiViewConfig(
          backgroundColor: Colors.white,
          buttonMode: ButtonMode.MATERIAL,
        ),
        categoryViewConfig: CategoryViewConfig(
          backgroundColor: Colors.white,
          indicatorColor: ChatColors.primary,
          iconColor: ChatColors.textHint,
          iconColorSelected: ChatColors.primary,
          backspaceColor: ChatColors.primary,
        ),
        bottomActionBarConfig: BottomActionBarConfig(
          backgroundColor: Colors.white,
          buttonColor: ChatColors.primary.withValues(alpha: 0.1),
          buttonIconColor: ChatColors.primary,
        ),
      ),
    );
  }
}
