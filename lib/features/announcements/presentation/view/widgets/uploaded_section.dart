import 'package:ai_eru_tawasol/core/utils/assets.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UploadedSection extends StatelessWidget {
  const UploadedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        spacing: 20,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 35, 152, 95),
              borderRadius: BorderRadius.circular(16),
            ),

            child: SvgPicture.asset(
              AssetsData.announcement,
              height: 80,
              color: Colors.white,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lecture 4 is Uploaded', style: Styles.textStyle22),
              SizedBox(height: 15),
              Row(
                spacing: 10,
                children: [
                  Text('May 20, 2024', style: Styles.textStyle16),
                  Text('•'),
                  Text('10:30 AM', style: Styles.textStyle16),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
