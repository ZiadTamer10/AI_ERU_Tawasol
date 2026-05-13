import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/core/shared/models/content_display_item.dart';
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
              _AuthorAvatar(item: item),
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

class _AuthorAvatar extends StatelessWidget {
  final ContentDisplayItem item;
  const _AuthorAvatar({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            item.typeColor.withValues(alpha: 0.15),
            item.typeColor.withValues(alpha: 0.08),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: item.typeColor.withValues(alpha: 0.2),
          width: 1.5,
        ),
      ),
      child: Center(
        child: Text(
          item.authorInitials,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: item.typeColor,
          ),
        ),
      ),
    );
  }
}
