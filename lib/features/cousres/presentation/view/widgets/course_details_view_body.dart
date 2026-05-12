// import 'package:ai_eru_tawasol/constants.dart';
// import 'package:ai_eru_tawasol/core/constants/attachment_types.dart';
// import 'package:ai_eru_tawasol/core/utils/styles.dart';
// import 'package:ai_eru_tawasol/features/cousres/presentation/view/widgets/assignment_card.dart';
// import 'package:ai_eru_tawasol/features/cousres/presentation/view/widgets/course_details_header.dart';
// import 'package:flutter/material.dart';

// class CourseDetailsViewBody extends StatelessWidget {
//   const CourseDetailsViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Column(
//         children: [
//           CourseDetailsHeader(),
//           SizedBox(height: 10),
//           const TabBar(
//             isScrollable: true,
//             tabAlignment: TabAlignment.center,
//             indicatorColor: kPrimaryColor,
//             labelColor: kPrimaryColor,
//             unselectedLabelColor: Colors.grey,
//             labelPadding: EdgeInsets.symmetric(horizontal: 16),
//             labelStyle: Styles.textStyle16,
//             tabs: [
//               Tab(text: 'Announcements'),
//               Tab(text: 'Materials'),
//               Tab(text: 'Assignments'),
//             ],
//           ),
//           SizedBox(height: 10),
//           Expanded(
//             child: TabBarView(
//               children: [
//                 ListView.builder(
//                   physics: BouncingScrollPhysics(),
//                   padding: EdgeInsets.symmetric(vertical: 10),
//                   itemCount: 5,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 8),
//                       child: AnnouncementCard(),
//                     );
//                   },
//                 ),
//                 ListView.builder(
//                   physics: BouncingScrollPhysics(),
//                   padding: EdgeInsets.symmetric(vertical: 10),
//                   itemCount: 7,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 16,
//                         vertical: 8,
//                       ),
//                       child: AttachmentCard(
//                         type: AttachmentTypes.doc,
//                         fileName: 'lecture$index.doc',
//                         size: '3.2 MB',
//                       ),
//                     );
//                   },
//                 ),
//                 ListView.builder(
//                   physics: BouncingScrollPhysics(),
//                   padding: EdgeInsets.symmetric(vertical: 10),
//                   itemCount: 5,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 16,
//                         vertical: 8,
//                       ),
//                       child: AssignmentCard(
//                         title: 'Assignment ${index + 1}',
//                         dueDate: 'May 25, 2026',
//                         isSubmitted: index % 2 == 0,
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
