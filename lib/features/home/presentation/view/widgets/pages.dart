import 'package:ai_eru_tawasol/features/announcements/presentation/view/announcements_view.dart';
import 'package:ai_eru_tawasol/features/cousres/presentation/view/widgets/courser_view_body.dart';
import 'package:flutter/material.dart';

final List<Widget> pages = const [
  AnnouncementsView(),
  CourserViewBody(),
  Center(child: Text("Calendar")),
  Center(child: Text("Profile")),
];
