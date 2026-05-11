import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAnnouncementTextField extends StatelessWidget {
  const CustomAnnouncementTextField({
    super.key,
    required this.label,
    required this.hint,
    this.maxLines = 1,
    this.controller,
  });

  final String label;
  final String hint;
  final int maxLines;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Styles.textStyle20),

          const SizedBox(height: 8),

          TextFormField(
            controller: controller,
            maxLines: maxLines,

            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),

            decoration: InputDecoration(
              hintText: hint,

              hintStyle: Styles.textStyle16.copyWith(color: Color(0xFF94A3B8)),

              contentPadding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 14,
              ),

              filled: true,
              fillColor: const Color(0xFFFAFAFC),

              border: _buildOutlineInputBorder(),

              enabledBorder: _buildOutlineInputBorder(),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(
                  color: Color(0xFF2563EB),
                  width: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Color(0xFFE2E8F0), width: 1.5),
    );
  }
}
