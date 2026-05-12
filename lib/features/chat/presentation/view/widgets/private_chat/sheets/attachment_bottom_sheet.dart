import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/shared/sheet_handle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/private_chat/sheets/attachment_tile.dart';

class AttachmentBottomSheet extends StatelessWidget {
  final void Function(AttachmentOption) onSelected;

  const AttachmentBottomSheet({super.key, required this.onSelected});

  static Future<void> show(
    BuildContext context, {
    required void Function(AttachmentOption) onSelected,
  }) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => AttachmentBottomSheet(onSelected: onSelected),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SheetHandle(),
          const SizedBox(height: 20),
          Text(
            'Share Content',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: ChatColors.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Choose what you would like to send',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              color: ChatColors.textSecondary,
            ),
          ),
          const SizedBox(height: 28),
          GridView.count(
            crossAxisCount: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 8,
            crossAxisSpacing: 4,
            children: AttachmentOption.values
                .map((opt) => AttachmentTile(
                      option: opt,
                      onTap: () {
                        Navigator.pop(context);
                        onSelected(opt);
                      },
                    ))
                .toList(),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () => Navigator.pop(context),
            style: TextButton.styleFrom(
              foregroundColor: ChatColors.textSecondary,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            child: Text(
              'Cancel',
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
