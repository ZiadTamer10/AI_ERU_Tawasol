import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_container_section.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class PreferencesSection extends StatelessWidget {
  const PreferencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerSection(
      title: 'Preferences',
      children: [
        CustomListTile(
          icon: Icons.brightness_5_outlined,
          title: 'Theme Mode',
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Light',
                style: Styles.textStyle16.copyWith(color: Color(0xff9E9D97)),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xff9E9D97),
                ),
              ),
            ],
          ),
        ),
        Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
        CustomListTile(
          icon: Icons.notifications_none_rounded,
          title: 'Notifications',
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Muted',
                style: Styles.textStyle16.copyWith(color: Color(0xff9E9D97)),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xff9E9D97),
                ),
              ),
            ],
          ),
        ),
        Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
        CustomListTile(
          icon: Icons.language_rounded,
          title: 'Language',
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'English',
                style: Styles.textStyle16.copyWith(color: Color(0xff9E9D97)),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xff9E9D97),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
