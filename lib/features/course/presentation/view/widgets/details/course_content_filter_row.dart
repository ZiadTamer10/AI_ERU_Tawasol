import 'package:ai_eru_tawasol/features/course/presentation/constants/course_colors.dart';
import 'package:ai_eru_tawasol/features/course/presentation/extensions/content_type_ui_ext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';

class CourseContentFilterRow extends StatelessWidget {
  final ContentType? activeFilter;
  final void Function(ContentType?) onFilterChanged;

  const CourseContentFilterRow({
    super.key,
    required this.activeFilter,
    required this.onFilterChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          _FilterChip(
            label: 'All',
            icon: Icons.apps_rounded,
            isSelected: activeFilter == null,
            color: CourseColors.primary,
            onTap: () => onFilterChanged(null),
          ),
          const SizedBox(width: 8),
          ...ContentType.values.map(
            (type) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: _FilterChip(
                label: type.label,
                icon: type.icon,
                isSelected: activeFilter == type,
                color: type.color,
                onTap: () =>
                    onFilterChanged(activeFilter == type ? null : type),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isSelected;
  final Color color;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: isSelected ? color : CourseColors.inputBg,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? color : CourseColors.divider,
            width: 1.2,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 13,
              color: isSelected ? Colors.white : CourseColors.textSecondary,
            ),
            const SizedBox(width: 5),
            Text(
              label,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: isSelected ? Colors.white : CourseColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
