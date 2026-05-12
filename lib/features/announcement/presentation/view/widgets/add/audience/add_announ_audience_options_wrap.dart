import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/audience/add_announ_option_chip.dart';

class AddAnnounAudienceOptionsWrap extends StatelessWidget {
  final List<String> options;
  final Set<String> selected;
  final void Function(String) onToggle;

  const AddAnnounAudienceOptionsWrap({
    super.key,
    required this.options,
    required this.selected,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: options
          .map(
            (opt) => AddAnnounOptionChip(
              label: opt,
              isSelected: selected.contains(opt),
              onTap: () => onToggle(opt),
            ),
          )
          .toList(),
    );
  }
}
