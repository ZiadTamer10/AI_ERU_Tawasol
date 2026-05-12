import 'package:flutter/material.dart';

class MessageImagePlaceholder extends StatelessWidget {
  const MessageImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1A3A7A),
      child: const Center(
        child: Icon(Icons.image_rounded, color: Colors.white54, size: 40),
      ),
    );
  }
}
