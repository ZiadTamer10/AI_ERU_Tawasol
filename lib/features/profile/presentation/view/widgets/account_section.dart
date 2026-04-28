import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // لون الشادو
              blurRadius: 10, // نعومة الشادو
              spreadRadius: 2, // انتشاره
              offset: Offset(0, 4), // اتجاهه (x, y)
            ),
          ],
        ),
        child: Column(
          children: [
            CustomListTile(
              icon: Icons.person_outline_rounded,
              title: 'User Name',
              subtitle: 'Ziad Tamer',
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
            Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
            CustomListTile(
              icon: Icons.lock_outline_rounded,
              title: 'User Name',
              subtitle: '********',
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility, size: 28),
              ),
            ),
            Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
            CustomListTile(
              icon: Icons.password_rounded,
              title: 'Change Password',
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.trailing,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 36),
      title: Text(
        title,
        style: Styles.textStyle18.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: Styles.textStyle18.copyWith(
                color: const Color(0xff9E9D97),
              ),
            )
          : null,
      trailing: trailing,
    );
  }
}
