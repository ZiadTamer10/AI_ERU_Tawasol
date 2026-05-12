import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';

class AnnounCardPreview extends StatelessWidget {
  final String body;

  const AnnounCardPreview({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    final preview =
        body.replaceAll('\n', ' ').replaceAll(RegExp(r'\s+'), ' ').trim();
    return Text(
      preview,
      style: GoogleFonts.plusJakartaSans(
        fontSize: 12.5,
        color: AnnounColors.textSecondary,
        height: 1.5,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
