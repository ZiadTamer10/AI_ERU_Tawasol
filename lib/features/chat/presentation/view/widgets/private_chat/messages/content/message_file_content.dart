import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';

class MessageFileContent extends StatelessWidget {
  final ChatMessage message;

  const MessageFileContent({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final isMe = message.isFromMe;
    final fileName = message.fileName ?? 'Document';
    final ext = fileName.contains('.')
        ? fileName.split('.').last.toUpperCase()
        : 'FILE';
    final sizeText = message.fileSizeMB != null
        ? '${message.fileSizeMB!.toStringAsFixed(1)} MB'
        : '';

    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: isMe
                  ? Colors.white.withValues(alpha: 0.2)
                  : const Color(0xffEEF2FF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.picture_as_pdf_rounded,
                  color: isMe ? Colors.white : const Color(0xffDC2626),
                  size: 20,
                ),
                Text(
                  ext,
                  style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.w800,
                    color: isMe ? Colors.white : const Color(0xffDC2626),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fileName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color:
                        isMe ? ChatColors.sentText : ChatColors.receivedText,
                  ),
                ),
                if (sizeText.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Text(
                    sizeText,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 11,
                      color: isMe
                          ? Colors.white.withValues(alpha: 0.7)
                          : ChatColors.textSecondary,
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(width: 8),
          Icon(
            Icons.download_rounded,
            size: 18,
            color: isMe
                ? Colors.white.withValues(alpha: 0.8)
                : ChatColors.primary,
          ),
        ],
      ),
    );
  }
}
