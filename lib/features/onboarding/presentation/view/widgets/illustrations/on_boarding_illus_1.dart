import 'package:flutter/material.dart';

class OnBoardingIllus1 extends StatelessWidget {
  const OnBoardingIllus1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      height: 260,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _glowRing(230, 0.04),
          _glowRing(178, 0.07),
          _glowRing(132, 0.12),
          Transform.translate(
            offset: const Offset(0, -90),
            child: _satellite(Icons.school_rounded),
          ),
          Transform.translate(
            offset: const Offset(90, 0),
            child: _satellite(Icons.chat_rounded),
          ),
          Transform.translate(
            offset: const Offset(0, 90),
            child: _satellite(Icons.menu_book_rounded),
          ),
          Transform.translate(
            offset: const Offset(-90, 0),
            child: _satellite(Icons.campaign_rounded),
          ),
          Container(
            width: 78,
            height: 78,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff4A7AFF),
                  Color(0xff003096),
                  Color(0xff001E6B),
                ],
                stops: [0.0, 0.55, 1.0],
              ),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.16),
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff3D6FFF).withValues(alpha: 0.58),
                  blurRadius: 32,
                  spreadRadius: 3,
                ),
              ],
            ),
            child: const Icon(
              Icons.hub_rounded,
              size: 38,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _glowRing(double size, double alpha) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            const Color(0xff3D6FFF).withValues(alpha: alpha),
            Colors.transparent,
          ],
        ),
      ),
    );
  }

  Widget _satellite(IconData icon) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff1A3A7A), Color(0xff0D1F40)],
        ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color(0xff3D6FFF).withValues(alpha: 0.35),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff3D6FFF).withValues(alpha: 0.28),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Icon(icon, size: 22, color: const Color(0xff7AAAFF)),
    );
  }
}
