import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/core/shared/models/content_display_item.dart';
import 'package:ai_eru_tawasol/core/shared/views/content_details/widgets/content_details_author_avatar.dart';
import 'package:ai_eru_tawasol/core/shared/widgets/badges/content_priority_badge.dart';
import 'package:ai_eru_tawasol/core/shared/widgets/badges/content_type_badge.dart';
import 'package:ai_eru_tawasol/core/shared/widgets/meta/feature_meta_row.dart';

class ContentDetailsHeaderCard extends StatelessWidget {
  final ContentDisplayItem item;

  const ContentDetailsHeaderCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContentDetailsAuthorAvatar(item: item),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ContentTypeBadge(
                          label: item.typeLabel,
                          icon: item.typeIcon,
                          color: item.typeColor,
                          lightColor: item.typeLightColor,
                        ),
                        if (item.priorityLabel != null) ...[
                          const SizedBox(width: 6),
                          ContentPriorityBadge(
                            label: item.priorityLabel!,
                            color: item.priorityColor!,
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item.title,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xff1E293B),
                        height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(color: Color(0xffE2E8F0), height: 1),
          const SizedBox(height: 14),
          if (item.contextLabel != null) ...[
            FeatureMetaRow(
              icon: Icons.menu_book_rounded,
              label: 'Subject / Course',
              value: item.contextCode != null
                  ? '${item.contextCode} · ${item.contextLabel}'
                  : item.contextLabel!,
              iconColor: item.typeColor,
            ),
            const SizedBox(height: 10),
          ],
          FeatureMetaRow(
            icon: Icons.person_rounded,
            label: 'Posted by',
            value: item.authorName,
            iconColor: const Color(0xff64748B),
          ),
          const SizedBox(height: 10),
          FeatureMetaRow(
            icon: Icons.calendar_today_rounded,
            label: 'Date',
            value: item.formattedDate,
            iconColor: const Color(0xff64748B),
          ),
          const SizedBox(height: 10),
          FeatureMetaRow(
            icon: Icons.access_time_rounded,
            label: 'Time',
            value: item.formattedTime,
            iconColor: const Color(0xff64748B),
          ),
        ],
      ),
    );
  }
}

