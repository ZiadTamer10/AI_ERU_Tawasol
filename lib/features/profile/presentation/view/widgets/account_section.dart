import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_container_section.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerSection(
      children: [
        CustomListTile(
          onTap: () {},
          icon: Icons.person_outline_rounded,
          title: 'User Name',
          subtitle: 'Ziad Tamer',
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Color(0xff9E9D97),
          ),
        ),
        Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
        CustomListTile(
          onTap: () {},
          icon: Icons.lock_outline_rounded,
          title: 'Password',
          subtitle: '********',
          trailing: Icon(Icons.visibility, size: 28, color: Color(0xff9E9D97)),
        ),
        Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
        CustomListTile(
          onTap: () {},
          icon: Icons.password_rounded,
          title: 'Change Password',
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Color(0xff9E9D97),
          ),
        ),
      ],
    );
  }
}
