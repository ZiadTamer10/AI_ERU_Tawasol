import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';

class AddAnnounPostButton extends StatelessWidget {
  final bool canPost;
  final bool isPosting;
  final VoidCallback onTap;

  const AddAnnounPostButton({
    super.key,
    required this.canPost,
    required this.isPosting,
    required this.onTap,
  });

  bool get _isActive => canPost && !isPosting;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          gradient: _isActive
              ? const LinearGradient(
                  colors: [AnnounColors.primaryDark, AnnounColors.primary],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
          color: _isActive ? null : AnnounColors.divider,
          borderRadius: BorderRadius.circular(14),
          boxShadow: _isActive
              ? [
                  BoxShadow(
                    color: AnnounColors.primary.withValues(alpha: 0.35),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(14),
            onTap: _isActive ? onTap : null,
            child: Center(child: _buildContent()),
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (isPosting) {
      return const SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(strokeWidth: 2.5, color: Colors.white),
      );
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.send_rounded,
          size: 17,
          color: canPost ? Colors.white : AnnounColors.textHint,
        ),
        const SizedBox(width: 7),
        Text(
          'Post Announcement',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 13.5,
            fontWeight: FontWeight.w700,
            color: canPost ? Colors.white : AnnounColors.textHint,
          ),
        ),
      ],
    );
  }
}
