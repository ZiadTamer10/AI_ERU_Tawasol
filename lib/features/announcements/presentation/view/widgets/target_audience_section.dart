import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/audience_data.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/audience_everyone_info.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/audience_options_wrap.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/audience_types.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/audience_types_selector.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/target_audience_header.dart';
import 'package:flutter/material.dart';

class TargetAudienceSection extends StatefulWidget {
  const TargetAudienceSection({super.key});

  @override
  State<TargetAudienceSection> createState() => _TargetAudienceSectionState();
}

class _TargetAudienceSectionState extends State<TargetAudienceSection> {
  AudienceType _selectedType = AudienceType.everyone;

  final Set<String> _selectedOptions = {};

  List<String> get _options {
    switch (_selectedType) {
      case AudienceType.department:
        return departments;

      case AudienceType.year:
        return years;

      case AudienceType.classGroup:
        return classes;

      case AudienceType.everyone:
        return [];
    }
  }

  void _changeAudienceType(AudienceType type) {
    setState(() {
      _selectedType = type;
      _selectedOptions.clear();
    });
  }

  void _toggleOption(String value) {
    setState(() {
      if (_selectedOptions.contains(value)) {
        _selectedOptions.remove(value);
      } else {
        _selectedOptions.add(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const TargetAudienceHeader(),

          const SizedBox(height: 16),

          AudienceTypesSelector(
            selectedType: _selectedType,
            onTypeChanged: _changeAudienceType,
          ),

          const SizedBox(height: 14),

          AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),

            child: _selectedType == AudienceType.everyone
                ? const AudienceEveryoneInfo()
                : AudienceOptionsWrap(
                    options: _options,
                    selectedOptions: _selectedOptions,
                    onToggle: _toggleOption,
                  ),
          ),
        ],
      ),
    );
  }
}
