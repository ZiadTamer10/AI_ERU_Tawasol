import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/manager/add_announ_cubit/add_announ_cubit.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/attachments/add_announ_add_more_button.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/attachments/add_announ_file_card.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/attachments/add_announ_upload_zone.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/attachments/picker/add_announ_attach_picker_sheet.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/shared/section_header.dart';

class AddAnnounAttachmentSection extends StatelessWidget {
  final bool visible;
  final List<AddAnnounAttachmentItem> attachments;
  final void Function(AddAnnounAttachmentItem) onAdd;
  final void Function(String id) onRemove;

  const AddAnnounAttachmentSection({
    super.key,
    required this.visible,
    required this.attachments,
    required this.onAdd,
    required this.onRemove,
  });

  void _showPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => AddAnnounAttachPickerSheet(onPick: onAdd),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOutCubic,
      alignment: Alignment.topCenter,
      child: visible ? _buildContent(context) : const SizedBox.shrink(),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'Attachments',
          trailing: _AddFileButton(onTap: () => _showPicker(context)),
        ),
        const SizedBox(height: 12),
        if (attachments.isEmpty)
          AddAnnounUploadZone(onTap: () => _showPicker(context))
        else ...[
          ...attachments.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: AddAnnounFileCard(
                item: item,
                onRemove: () => onRemove(item.id),
              ),
            ),
          ),
          const SizedBox(height: 4),
          AddAnnounAddMoreButton(onTap: () => _showPicker(context)),
        ],
      ],
    );
  }
}

class _AddFileButton extends StatelessWidget {
  final VoidCallback onTap;

  const _AddFileButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: AnnounColors.primary.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(20),
          border:
              Border.all(color: AnnounColors.primary.withValues(alpha: 0.25)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.add_rounded,
                size: 14, color: AnnounColors.primary),
            const SizedBox(width: 4),
            Text(
              'Add File',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: AnnounColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
