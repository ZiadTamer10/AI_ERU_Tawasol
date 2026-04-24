import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class LetterSection extends StatelessWidget {
  const LetterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Dear Students,', style: Styles.textStyle18),
          SizedBox(height: 10),
          Text(
            'Lecture 4 about Trees and Graphs has been uploaded.Please check the materials section or click the link below to download the PDF.',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 10),
          Text('Best regards,', style: Styles.textStyle18),
          Text('Dr. Ahmed Sayed', style: Styles.textStyle18),
        ],
      ),
    );
  }
}
