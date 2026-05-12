import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/post_type/add_announ_post_type_card.dart';

class AddAnnounPostTypeSelector extends StatelessWidget {
  final AnnouncementType selected;
  final void Function(AnnouncementType) onSelected;

  const AddAnnounPostTypeSelector({
    super.key,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Post Type',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: AnnounColors.textPrimary,
            letterSpacing: 0.1,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: AnnouncementType.values
              .map(
                (type) => Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: type != AnnouncementType.assignment ? 10 : 0,
                    ),
                    child: AddAnnounPostTypeCard(
                      type: type,
                      isSelected: selected == type,
                      onTap: () => onSelected(type),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
