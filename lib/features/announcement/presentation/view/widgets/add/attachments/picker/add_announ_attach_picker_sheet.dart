import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/manager/add_announ_cubit/add_announ_cubit.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/attachments/picker/add_announ_pick_option.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/attachments/picker/add_announ_pick_tile.dart';

class AddAnnounAttachPickerSheet extends StatelessWidget {
  final void Function(AddAnnounAttachmentItem) onPick;

  const AddAnnounAttachPickerSheet({super.key, required this.onPick});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: AnnounColors.divider,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Attach a file',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AnnounColors.textPrimary,
                ),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.05,
                children: AddAnnounPickOption.all
                    .map(
                      (opt) => AddAnnounPickTile(
                        option: opt,
                        onTap: () => _handlePick(context, opt),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handlePick(BuildContext context, AddAnnounPickOption opt) {
    Navigator.pop(context);
    onPick(AddAnnounAttachmentItem(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: opt.mockName,
      sizeLabel: opt.mockSize,
      fileType: opt.fileType,
    ));
  }
}
