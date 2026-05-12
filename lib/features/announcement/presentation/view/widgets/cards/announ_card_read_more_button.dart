import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/core/utils/app_router.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';

class AnnounCardReadMoreButton extends StatelessWidget {
  final Announcement announcement;

  const AnnounCardReadMoreButton({super.key, required this.announcement});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
        AppRouter.kAnnouncementDetailsView,
        extra: announcement,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Read more',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 11.5,
              fontWeight: FontWeight.w700,
              color: AnnounColors.primary,
            ),
          ),
          const SizedBox(width: 3),
          const Icon(Icons.arrow_forward_ios_rounded,
              size: 10, color: AnnounColors.primary),
        ],
      ),
    );
  }
}
