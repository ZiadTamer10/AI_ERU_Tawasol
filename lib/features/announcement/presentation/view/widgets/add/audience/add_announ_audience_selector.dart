import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/manager/add_announ_cubit/add_announ_cubit.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/audience/add_announ_audience_options_wrap.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/audience/add_announ_audience_type_card.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/audience/add_announ_everyone_info.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/audience/add_announ_required_badge.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/shared/section_header.dart';

class AddAnnounAudienceSelector extends StatelessWidget {
  final AddAnnounState state;
  final void Function(AddAnnounAudienceType) onTypeSelected;
  final void Function(String) onOptionToggled;
  final List<String> availableOptions;

  const AddAnnounAudienceSelector({
    super.key,
    required this.state,
    required this.onTypeSelected,
    required this.onOptionToggled,
    required this.availableOptions,
  });

  @override
  Widget build(BuildContext context) {
    final types = state.audienceTypesForRole();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'Target Audience',
          trailing: state.audienceType == null ? const AddAnnounRequiredBadge() : null,
        ),
        const SizedBox(height: 14),
        Row(
          children: types
              .map(
                (type) => Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.only(right: type != types.last ? 10 : 0),
                    child: AddAnnounAudienceTypeCard(
                      type: type,
                      isSelected: state.audienceType == type,
                      onTap: () => onTypeSelected(type),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 14),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 280),
          switchInCurve: Curves.easeOutCubic,
          switchOutCurve: Curves.easeInCubic,
          transitionBuilder: (child, anim) => FadeTransition(
            opacity: anim,
            child: SizeTransition(
              sizeFactor: anim,
              axisAlignment: -1,
              child: child,
            ),
          ),
          child: _buildOptionsArea(),
        ),
      ],
    );
  }

  Widget _buildOptionsArea() {
    if (state.audienceType == null) return const SizedBox.shrink();
    if (state.audienceType == AddAnnounAudienceType.everyone) {
      return const AddAnnounEveryoneInfo();
    }
    return AddAnnounAudienceOptionsWrap(
      key: ValueKey(state.audienceType),
      options: availableOptions,
      selected: state.selectedOptions,
      onToggle: onOptionToggled,
    );
  }
}

