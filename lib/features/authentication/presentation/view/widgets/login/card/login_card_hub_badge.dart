import 'package:flutter/material.dart';

class LoginCardHubBadge extends StatelessWidget {
  const LoginCardHubBadge({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size * 0.24),
        gradient: const LinearGradient(
          colors: [Color(0xff1A3A7A), Color(0xff0D1F40)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Icon(
        Icons.hub_rounded,
        color: const Color(0xff7AAAFF),
        size: size * 0.56,
      ),
    );
  }
}
