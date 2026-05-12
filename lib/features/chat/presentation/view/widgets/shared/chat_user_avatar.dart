import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';

class ChatUserAvatar extends StatelessWidget {
  final ChatUser user;
  final double radius;

  const ChatUserAvatar({
    super.key,
    required this.user,
    this.radius = 14,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: user.role.color,
      child: Text(
        user.initials,
        style: TextStyle(
          color: Colors.white,
          fontSize: radius * 0.72,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
