import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/manager/add_announ_cubit/add_announ_cubit.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/add_announ_app_bar.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/add/add_announ_body.dart';

class AddAnnounScaffold extends StatelessWidget {
  final AnnounRole role;

  const AddAnnounScaffold({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: BlocListener<AddAnnounCubit, AddAnnounState>(
        listenWhen: (prev, curr) => curr.isPosted && !prev.isPosted,
        listener: _onPosted,
        child: Scaffold(
          backgroundColor: AnnounColors.background,
          appBar: AddAnnounAppBar(role: role),
          body: AddAnnounBody(role: role),
        ),
      ),
    );
  }

  void _onPosted(BuildContext context, AddAnnounState state) {
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle_rounded,
                color: Colors.white, size: 18),
            const SizedBox(width: 10),
            Text(
              'Announcement posted successfully!',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xff059669),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
