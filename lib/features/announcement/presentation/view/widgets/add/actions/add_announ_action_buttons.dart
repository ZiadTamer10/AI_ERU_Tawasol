import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/actions/add_announ_discard_button.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/actions/add_announ_post_button.dart';

class AddAnnounActionButtons extends StatelessWidget {
  final bool canPost;
  final bool isPosting;
  final VoidCallback onDiscard;
  final VoidCallback onPost;

  const AddAnnounActionButtons({
    super.key,
    required this.canPost,
    required this.isPosting,
    required this.onDiscard,
    required this.onPost,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 20),
      decoration: BoxDecoration(
        color: AnnounColors.surface,
        border: const Border(
          top: BorderSide(color: AnnounColors.divider, width: 1),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(
              child: AddAnnounDiscardButton(
                isDisabled: isPosting,
                onTap: onDiscard,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: AddAnnounPostButton(
                canPost: canPost,
                isPosting: isPosting,
                onTap: onPost,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
