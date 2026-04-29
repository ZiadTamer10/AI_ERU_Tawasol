import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/language_options.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/theme_mode_options.dart';
import 'package:flutter/material.dart';

class ThemeModeTile extends StatelessWidget {
  const ThemeModeTile({
    super.key,
    this.icon,
    required this.title,
    this.value,
    this.groupValue,
    required this.onTap,
    this.subtitle,
    this.langValue,
    this.gValue,
  });

  final IconData? icon;
  final String title;
  final String? subtitle;
  final ThemeModeOptions? value;
  final ThemeModeOptions? groupValue;
  final LanguageOptions? langValue;
  final LanguageOptions? gValue;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = value == groupValue;
    final bool isSelected2 = langValue == gValue;

    return ListTile(
      leading: icon != null ? Icon(icon, size: 28) : null,
      title: Text(
        title,
        style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
      ),
      subtitle: subtitle != null
          ? Text(subtitle!, style: Styles.textStyle16)
          : null,
      trailing: Icon(
        size: 28,
        isSelected & isSelected2
            ? Icons.radio_button_checked
            : Icons.radio_button_off,
        color: isSelected ? Colors.blue : Colors.grey,
      ),
      onTap: onTap,
    );
  }
}
