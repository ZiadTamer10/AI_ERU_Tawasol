import 'package:ai_eru_tawasol/core/utils/assets.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SubmissionData extends StatelessWidget {
  const SubmissionData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF9F9F9),
        border: Border.all(color: Color(0xffC4C4C4)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 10,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: SvgPicture.asset(AssetsData.docIcon, height: 60),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('my_solution.dox', style: Styles.textStyle18),
                    Text('2.3 MB', style: Styles.textStyle18),
                  ],
                ),
                Spacer(flex: 9),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.download_done_sharp,
                    color: Colors.green,
                    size: 32,
                  ),
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                Text('Submitted on May 16, 2026', style: Styles.textStyle16),
                Text('•'),
                Text('10:30 AM', style: Styles.textStyle16),
              ],
            ),
            Container(
              height: 58,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffC8E6C9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Submitted',
                  style: Styles.textStyle20.copyWith(color: Colors.green),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
