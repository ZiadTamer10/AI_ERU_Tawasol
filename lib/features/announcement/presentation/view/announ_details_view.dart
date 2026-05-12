import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/details/announ_details_app_bar.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/details/announ_details_attachments.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/details/announ_details_header.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/details/announ_details_letter_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnnounDetailsView extends StatelessWidget {
  final Announcement announcement;

  const AnnounDetailsView({super.key, required this.announcement});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: AnnounColors.background,
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            AnnounDetailsAppBar(announcement: announcement),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnnounDetailsHeader(announcement: announcement),
                    const SizedBox(height: 20),
                    AnnounDetailsLetterBody(announcement: announcement),
                    if (announcement.attachments.isNotEmpty) ...[
                      const SizedBox(height: 20),
                      AnnounDetailsAttachments(
                          attachments: announcement.attachments),
                    ],
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
