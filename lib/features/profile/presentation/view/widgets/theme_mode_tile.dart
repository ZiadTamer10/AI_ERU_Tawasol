import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/theme_mode_options.dart';
import 'package:flutter/material.dart';

class ThemeModeTile extends StatelessWidget {
  const ThemeModeTile({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final ThemeModeOptions value;
  final ThemeModeOptions groupValue;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = value == groupValue;

    return ListTile(
      leading: Icon(icon, size: 28),
      title: Text(title, style: const TextStyle(fontSize: 18)),
      trailing: Icon(
        size: 28,
        isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
        color: isSelected ? Colors.blue : Colors.grey,
      ),
      onTap: onTap,
    );
  }
}
