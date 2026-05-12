import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/details/announ_details_attachment_tile.dart';

class AnnounDetailsAttachments extends StatelessWidget {
  final List<AnnounAttachment> attachments;

  const AnnounDetailsAttachments({super.key, required this.attachments});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AnnounColors.surface,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.attach_file_rounded,
                  size: 18, color: AnnounColors.primary),
              const SizedBox(width: 8),
              Text(
                'Attachments',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: AnnounColors.textPrimary,
                ),
              ),
              const SizedBox(width: 6),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                decoration: BoxDecoration(
                  color: AnnounColors.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '${attachments.length}',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: AnnounColors.primary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          ...attachments.map((a) => AnnounDetailsAttachmentTile(attachment: a)),
        ],
      ),
    );
  }
}
