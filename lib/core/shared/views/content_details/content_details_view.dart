import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_eru_tawasol/core/shared/models/content_display_item.dart';
import 'package:ai_eru_tawasol/core/shared/views/content_details/widgets/content_details_app_bar.dart';
import 'package:ai_eru_tawasol/core/shared/views/content_details/widgets/content_details_header_card.dart';
import 'package:ai_eru_tawasol/core/shared/views/content_details/widgets/content_details_letter_body.dart';
import 'package:ai_eru_tawasol/core/shared/views/content_details/widgets/content_details_attachments_section.dart';

class ContentDetailsView extends StatelessWidget {
  final ContentDisplayItem item;

  const ContentDetailsView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: const Color(0xffF0F4FF),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            ContentDetailsAppBar(item: item),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContentDetailsHeaderCard(item: item),
                    const SizedBox(height: 20),
                    ContentDetailsLetterBody(item: item),
                    if (item.attachments.isNotEmpty) ...[
                      const SizedBox(height: 20),
                      ContentDetailsAttachmentsSection(
                          attachments: item.attachments),
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
