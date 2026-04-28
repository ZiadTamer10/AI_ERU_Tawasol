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
          icon: Icons.person_outline_rounded,
          title: 'User Name',
          subtitle: 'Ziad Tamer',
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
          icon: Icons.lock_outline_rounded,
          title: 'User Name',
          subtitle: '********',
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.visibility, size: 28, color: Color(0xff9E9D97)),
          ),
        ),
        Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
        CustomListTile(
          icon: Icons.password_rounded,
          title: 'Change Password',
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
