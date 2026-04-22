import 'package:ai_eru_tawasol/core/utils/app_router.dart';
import 'package:ai_eru_tawasol/core/utils/assets.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kCourseDetailsView);
        },
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromARGB(255, 221, 214, 214)),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.2),
            //     blurRadius: 10,
            //     spreadRadius: 2,
            //     offset: Offset(0, 4),
            //   ),
            // ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(AssetsData.logo2, color: Colors.greenAccent),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Advanced Robotics', style: Styles.textStyle18),
                  Text(
                    'Dr. Fatima Al-Mansour',
                    style: Styles.textStyle16.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios_sharp, size: 22),
            ],
          ),
        ),
      ),
    );
  }
}
