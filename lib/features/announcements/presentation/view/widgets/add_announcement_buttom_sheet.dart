import 'package:ai_eru_tawasol/features/announcements/presentation/view/widgets/add_announcement_form.dart';
import 'package:flutter/material.dart';

class AddAnnouncementButtomSheet extends StatelessWidget {
  const AddAnnouncementButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),

      child: SafeArea(
        top: false,

        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.sizeOf(context).height * .9,
          ),

          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _DragHandle(),

              Expanded(child: AddAnnouncementForm()),
            ],
          ),
        ),
      ),
    );
  }
}

class _DragHandle extends StatelessWidget {
  const _DragHandle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),

      child: Container(
        width: 40,
        height: 4,

        decoration: BoxDecoration(
          color: Color(0xFFCBD5E1),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }
}
