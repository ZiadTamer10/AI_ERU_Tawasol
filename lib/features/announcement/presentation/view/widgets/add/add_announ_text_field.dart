import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';

class AddAnnounTextField extends StatelessWidget {
  final String label;
  final String hint;
  final int maxLines;
  final void Function(String) onChanged;
  final TextEditingController? controller;

  const AddAnnounTextField({
    super.key,
    required this.label,
    required this.hint,
    this.maxLines = 1,
    required this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: AnnounColors.textPrimary,
            letterSpacing: 0.1,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: AnnounColors.inputBg,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AnnounColors.divider, width: 1.2),
          ),
          child: TextField(
            controller: controller,
            maxLines: maxLines,
            onChanged: onChanged,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              color: AnnounColors.textPrimary,
              height: 1.5,
            ),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                color: AnnounColors.textHint,
              ),
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              isDense: true,
            ),
          ),
        ),
      ],
    );
  }
}
