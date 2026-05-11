import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/audience_type_card.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/audience_types.dart';
import 'package:flutter/material.dart';

class AudienceTypesSelector extends StatelessWidget {
  const AudienceTypesSelector({
    super.key,
    required this.selectedType,
    required this.onTypeChanged,
  });

  final AudienceType selectedType;
  final Function(AudienceType) onTypeChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AudienceTypeCard(
          icon: Icons.public_rounded,
          label: 'Everyone',
          isSelected: selectedType == AudienceType.everyone,
          onTap: () => onTypeChanged(AudienceType.everyone),
        ),

        const SizedBox(width: 8),

        AudienceTypeCard(
          icon: Icons.account_balance_rounded,
          label: 'Department',
          isSelected: selectedType == AudienceType.department,
          onTap: () => onTypeChanged(AudienceType.department),
        ),

        const SizedBox(width: 8),

        AudienceTypeCard(
          icon: Icons.calendar_today_rounded,
          label: 'Year',
          isSelected: selectedType == AudienceType.year,
          onTap: () => onTypeChanged(AudienceType.year),
        ),

        const SizedBox(width: 8),

        AudienceTypeCard(
          icon: Icons.class_rounded,
          label: 'Class',
          isSelected: selectedType == AudienceType.classGroup,
          onTap: () => onTypeChanged(AudienceType.classGroup),
        ),
      ],
    );
  }
}
