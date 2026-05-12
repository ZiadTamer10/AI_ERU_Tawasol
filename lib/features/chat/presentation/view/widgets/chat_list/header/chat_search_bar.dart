import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatSearchBar extends StatelessWidget {
  final TextEditingController controller;

  const ChatSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: TextField(
        controller: controller,
        autofocus: true,
        style: GoogleFonts.plusJakartaSans(color: Colors.white, fontSize: 14),
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search_rounded,
              color: Colors.white60, size: 20),
          hintText: 'Search by name or student ID…',
          hintStyle: GoogleFonts.plusJakartaSans(
            color: Colors.white54,
            fontSize: 14,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 12),
        ),
      ),
    );
  }
}
