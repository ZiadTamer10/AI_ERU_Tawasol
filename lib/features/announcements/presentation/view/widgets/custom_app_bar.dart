import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
      child: Row(
        children: [
          Text('Home', style: Styles.textStyle36),
          Spacer(),
          if (isDoctor) ...[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_month_rounded, size: 32),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person, size: 32),
            ),
          ] else ...[
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.qrcode, size: 32),
            ),
          ],
        ],
      ),
    );
  }
}
