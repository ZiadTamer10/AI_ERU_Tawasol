import 'package:ai_eru_tawasol/constants.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundColor: Color(0xffE4E5E5),
          radius: 70,
          backgroundImage: NetworkImage(
            'https://i.ytimg.com/vi/lRdXqvpuVMk/hq720.jpg',
          ),
        ),
        SizedBox(height: 10),
        Text('Ziad Tamer', style: Styles.textStyle24),
        SizedBox(height: 5),
        Text(
          '225040@eru.edu.eg',
          style: Styles.textStyle20.copyWith(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Student ID: 225040',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
