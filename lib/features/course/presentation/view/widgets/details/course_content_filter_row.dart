import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/core/shared/widgets/filter/feature_filter_chip.dart';
import 'package:ai_eru_tawasol/features/course/presentation/constants/course_colors.dart';
import 'package:ai_eru_tawasol/features/course/presentation/extensions/content_type_ui_ext.dart';
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
          FeatureFilterChip(
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
              child: FeatureFilterChip(
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

