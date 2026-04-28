import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
