import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/app_router.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({super.key});

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
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
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
                  Text(
                    'Lecture 4 is Uploaded',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(
                          context,
                        ).push(AppRouter.kAnnouncementDetailsView);
                      },
                      child: Text(
                        isDoctor ? 'Edit➜' : "Read full details ➜",
                        style: Styles.textStyle20.copyWith(
                          color: kPrimaryColor,
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
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
