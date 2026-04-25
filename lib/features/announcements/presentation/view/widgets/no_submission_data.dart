import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class NoSubmissionData extends StatelessWidget {
  const NoSubmissionData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffF9F9F9),
        border: Border.all(color: Color(0xffC4C4C4)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          SizedBox(height: 45),
          Text('No submission yet', style: Styles.textStyle18),
          SizedBox(height: 35),
          SizedBox(
            height: 48,
            child: CustomButton(text: '+ Add Submission', onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
