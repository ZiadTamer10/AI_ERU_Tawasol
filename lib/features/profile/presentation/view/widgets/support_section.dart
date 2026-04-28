import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_container_section.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class SupportSection extends StatelessWidget {
  const SupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerSection(
      children: [
        CustomListTile(
          icon: Icons.headset_mic_outlined,
          title: 'Help&Support',
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xff9E9D97),
            ),
          ),
        ),
        Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
        CustomListTile(
          icon: Icons.info_outline_rounded,
          title: 'About Me',
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xff9E9D97),
            ),
          ),
        ),
      ],
    );
  }
}
