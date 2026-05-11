import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/audience_option_chip.dart';
import 'package:flutter/material.dart';

class AudienceOptionsWrap extends StatelessWidget {
  const AudienceOptionsWrap({
    super.key,
    required this.options,
    required this.selectedOptions,
    required this.onToggle,
  });

  final List<String> options;
  final Set<String> selectedOptions;
  final Function(String) onToggle;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,

      children: options.map((option) {
        return AudienceOptionChip(
          label: option,
          isSelected: selectedOptions.contains(option),
          onTap: () => onToggle(option),
        );
      }).toList(),
    );
  }
}
