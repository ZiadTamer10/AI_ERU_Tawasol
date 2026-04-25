import 'package:ai_eru_tawasol/core/utils/assets.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CourseDetailsHeader extends StatelessWidget {
  const CourseDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 🔵 الخلفية
        Container(
          height: 220,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsData.course),
              fit: BoxFit.fill,
            ),

            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),

        // 🔙 زرار الرجوع
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ],
            ),
          ),
        ),

        // 🧠 محتوى الكورس
        Positioned(
          top: 140,
          left: 16,
          right: 16,
          child: Row(
            children: [
              // 🖼️ صورة الكورس
              const SizedBox(width: 16),

              // 📄 النصوص
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Data Structures",
                    style: Styles.textStyle22.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Dr. Ahmed Sayed",
                    style: Styles.textStyle18.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
