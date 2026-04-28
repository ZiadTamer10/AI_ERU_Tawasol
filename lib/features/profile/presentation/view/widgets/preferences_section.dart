import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class PreferencesSection extends StatelessWidget {
  const PreferencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Preferences',
            style: Styles.textStyle20.copyWith(color: kPrimaryColor),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                CustomListTile(
                  icon: Icons.brightness_5_outlined,
                  title: 'Theme Mode',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Light',
                        style: Styles.textStyle16.copyWith(
                          color: const Color(0xff9E9D97),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xff9E9D97),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
                CustomListTile(
                  icon: Icons.notifications_none_sharp,
                  title: 'Notifications',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Muted',
                        style: Styles.textStyle16.copyWith(
                          color: const Color(0xff9E9D97),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xff9E9D97),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
                CustomListTile(
                  icon: Icons.language_rounded,
                  title: 'Language',
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'English',
                        style: Styles.textStyle16.copyWith(
                          color: const Color(0xff9E9D97),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xff9E9D97),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
