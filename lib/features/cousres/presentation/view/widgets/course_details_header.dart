import 'package:ai_eru_tawasol/core/utils/assets.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CourseDetailsHeader extends StatelessWidget {
  const CourseDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Stack(
        children: [
          // Background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsData.course),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),

          // Back button
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back, color: Colors.white),
              ),
            ),
          ),

          // Text content
          Positioned(
            bottom: 20,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Advanced Robotics",
                  style: Styles.textStyle22.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "Dr. Fatima Al-Mansour",
                  style: Styles.textStyle18.copyWith(color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
