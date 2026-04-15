import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/forget_password_section.dart';
import 'package:flutter/material.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key, required this.onChanged});

  final Function(bool value) onChanged;

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Transform.scale(
            scale: 1.1,
            child: Checkbox(
              value: isChecked,
              activeColor: kPrimaryColor,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
              onChanged: (value) {
                setState(() {
                  isChecked = value ?? false;
                });
                widget.onChanged(isChecked);
              },
            ),
          ),
          Text("Remember me", style: Styles.textStyle16),
          const Spacer(),
          ForgetPasswordSection(),
        ],
      ),
    );
  }
}
