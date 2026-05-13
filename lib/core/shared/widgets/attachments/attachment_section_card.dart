import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/core/shared/widgets/attachments/attachment_tile.dart';

class AttachmentDisplayData {
  final String name;
  final String sizeLabel;
  final IconData icon;
  final Color iconColor;

  const AttachmentDisplayData({
    required this.name,
    required this.sizeLabel,
    required this.icon,
    required this.iconColor,
  });
}

class AttachmentSectionCard extends StatelessWidget {
  final List<AttachmentDisplayData> attachments;
  final Color primaryColor;
  final Color countBgColor;

  const AttachmentSectionCard({
    super.key,
    required this.attachments,
    required this.primaryColor,
    this.countBgColor = const Color(0xffF0F4FF),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
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
              Icon(Icons.attach_file_rounded, size: 18, color: primaryColor),
              const SizedBox(width: 8),
              Text(
                'Attachments',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff1E293B),
                ),
              ),
              const SizedBox(width: 6),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                decoration: BoxDecoration(
                  color: countBgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '${attachments.length}',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          ...attachments.map((a) => AttachmentTile(
                attachment: a,
                primaryColor: primaryColor,
              )),
        ],
      ),
    );
  }
}
