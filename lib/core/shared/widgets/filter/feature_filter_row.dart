import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/core/shared/widgets/filter/feature_filter_chip.dart';

class FilterItem<T> {
  final String label;
  final IconData icon;
  final Color color;
  final T? value; // null = "All"

  const FilterItem({
    required this.label,
    required this.icon,
    required this.color,
    required this.value,
  });
}

class FeatureFilterRow<T> extends StatelessWidget {
  final List<FilterItem<T>> items;
  final T? activeValue;
  final void Function(T?) onChanged;

  const FeatureFilterRow({
    super.key,
    required this.items,
    required this.activeValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, i) {
          final item = items[i];
          return FeatureFilterChip(
            label: item.label,
            icon: item.icon,
            color: item.color,
            isSelected: activeValue == item.value,
            onTap: () => onChanged(
              activeValue == item.value ? null : item.value,
            ),
          );
        },
      ),
    );
  }
}
