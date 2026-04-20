import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AnnouncementData extends StatelessWidget {
  const AnnouncementData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'November 29, 2025',
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
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
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Advanced Robotics',
                    style: Styles.textStyle24.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Dr. Fatima Al-Mansour',
                    style: Styles.textStyle18.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text('Announcement Details', style: Styles.textStyle20),
                  const SizedBox(height: 6),
                  Text(
                    'Project submissions are due of studies, wishing your dessenal and facility etc.',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Align(
                    alignment: AlignmentGeometry.centerRight,
                    child: RichText(
                      text: TextSpan(
                        style: Styles.textStyle22.copyWith(
                          color: Color(0xff6B5E5E),
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: "Read full details➔",
                            style: const TextStyle(color: kPrimaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Read full details clicked");
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
