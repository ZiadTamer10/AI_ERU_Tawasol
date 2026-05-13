import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/announ_view.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/chat_view.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';

List<Widget> buildPages(AnnounRole role) => [
      AnnounView(role: role),
      const ChatView(),
      const Text('Cousre Feature'),
      // const CoursesView(),
      const ProfileView(),
    ];
