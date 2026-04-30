import 'package:ai_eru_tawasol/core/utils/app_router.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_container_section.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SupportSection extends StatelessWidget {
  const SupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerSection(
      children: [
        CustomListTile(
          onTap: () {},
          icon: Icon(Icons.headset_mic_outlined, size: 36),
          title: 'Help&Support',
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Color(0xff9E9D97),
          ),
        ),
        Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
        CustomListTile(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kAboutMeView);
          },
          icon: Icon(Icons.info_outline_rounded, size: 36),
          title: 'About Me',
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Color(0xff9E9D97),
          ),
        ),
      ],
    );
  }
}
