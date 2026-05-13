import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';
import 'package:ai_eru_tawasol/features/course/presentation/constants/course_colors.dart';
import 'package:ai_eru_tawasol/features/course/presentation/extensions/content_type_ui_ext.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/details/content_card/course_content_card_footer.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/details/content_card/course_content_card_top_row.dart';

class CourseContentCardContent extends StatelessWidget {
  final CourseContent content;

  const CourseContentCardContent({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final typeColor = content.type.color;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: CourseColors.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.055),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
          BoxShadow(
            color: typeColor.withValues(alpha: 0.06),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(width: 4, color: typeColor),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 14, 14, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CourseContentCardTopRow(content: content),
                      const SizedBox(height: 9),
                      Text(
                        content.title,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: CourseColors.textPrimary,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        content.body,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12.5,
                          color: CourseColors.textHint,
                          height: 1.5,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 11),
                      CourseContentCardFooter(content: content),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
