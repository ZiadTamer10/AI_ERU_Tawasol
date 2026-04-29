import 'package:ai_eru_tawasol/core/utils/app_router.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_container_section.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PreferencesSection extends StatelessWidget {
  const PreferencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerSection(
      title: 'Preferences',
      children: [
        CustomListTile(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kThemeModeView);
          },
          icon: Icons.brightness_5_outlined,
          title: 'Theme Mode',
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 10,
            children: [
              Text(
                'Light',
                style: Styles.textStyle16.copyWith(color: Color(0xff9E9D97)),
              ),
              Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff9E9D97)),
            ],
          ),
        ),
        Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
        CustomListTile(
          onTap: () {},
          icon: Icons.notifications_none_rounded,
          title: 'Notifications',
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 10,
            children: [
              Text(
                'Muted',
                style: Styles.textStyle16.copyWith(color: Color(0xff9E9D97)),
              ),
              Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff9E9D97)),
            ],
          ),
        ),
        Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
        CustomListTile(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kLanguageView);
          },
          icon: Icons.language_rounded,
          title: 'Language',
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 10,
            children: [
              Text(
                'English',
                style: Styles.textStyle16.copyWith(color: Color(0xff9E9D97)),
              ),
              Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff9E9D97)),
            ],
          ),
        ),
      ],
    );
  }
}
