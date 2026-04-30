import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/additional_pages_app_bar.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_container_section.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUsViewBody extends StatelessWidget {
  const ContactUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AdditionalPagesAppBar(title: 'Contact Us'),
        const SizedBox(height: 30),
        Text(
          "We'd love to hear from you",
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 30),
        const CustomContainerSection(
          children: [
            CustomListTile(
              icon: FaIcon(
                FontAwesomeIcons.solidEnvelope,
                color: kPrimaryColor,
                size: 32,
              ),
              title: 'Email',
              subtitle: 'support@aiconnect.com',
            ),
            SizedBox(height: 10),
            CustomListTile(
              icon: FaIcon(
                FontAwesomeIcons.phone,
                color: kPrimaryColor,
                size: 32,
              ),
              title: 'Phone',
              subtitle: '+20 101111002',
            ),
            SizedBox(height: 10),
            CustomListTile(
              icon: FaIcon(
                FontAwesomeIcons.locationDot,
                color: kPrimaryColor,
                size: 32,
              ),
              title: 'Address',
              subtitle: '123 Smart City, Cairo,Egypt',
            ),
            SizedBox(height: 10),
            CustomListTile(
              icon: FaIcon(
                FontAwesomeIcons.clock,
                color: kPrimaryColor,
                size: 32,
              ),
              title: 'Working Hours',
              subtitle: 'Sat - Thu: 9:00 AM - 6:00 PM',
            ),
          ],
        ),
        const SizedBox(height: 40),
        Placeholder(fallbackHeight: 210),
      ],
    );
  }
}
