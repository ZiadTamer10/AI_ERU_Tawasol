import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:ai_eru_tawasol/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:ai_eru_tawasol/core/utils/app_router.dart';

class AssignmentCard extends StatelessWidget {
  const AssignmentCard({
    super.key,
    required this.title,
    required this.dueDate,
    required this.isSubmitted,
  });

  final String title;
  final String dueDate;
  final bool isSubmitted;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        GoRouter.of(context).push(AppRouter.kAnnouncementDetailsView);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Color(0xffE0E0E0)),
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.assignment, color: kPrimaryColor),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Styles.textStyle18),
                  const SizedBox(height: 6),
                  Text(
                    'Due: $dueDate',
                    style: Styles.textStyle16.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: isSubmitted ? Color(0xffC8E6C9) : Color(0xffFFCDD2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                isSubmitted ? 'Submitted' : 'Pending',
                style: Styles.textStyle14.copyWith(
                  color: isSubmitted ? Colors.green : Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
