import 'package:flutter/material.dart';

class OnBoardingIllus5 extends StatelessWidget {
  const OnBoardingIllus5({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 280,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _ring(256, 0.06),
          _ring(216, 0.09),
          _ring(178, 0.13),
          _ring(142, 0.17),
          _ring(110, 0.08),
          _particle(-108, -72, 4.5),
          _particle(96, -102, 3.5),
          _particle(-94, 88, 3.0),
          _particle(114, 66, 4.0),
          _particle(-116, 18, 2.5),
          _particle(58, 112, 3.0),
          _particle(72, -44, 2.0),
          _particle(-56, -110, 2.5),
          Container(
            width: 96,
            height: 96,
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
              borderRadius: BorderRadius.circular(29),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.20),
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff3D6FFF).withValues(alpha: 0.65),
                  blurRadius: 44,
                  spreadRadius: 5,
                ),
                BoxShadow(
                  color: const Color(0xff001E6B).withValues(alpha: 0.60),
                  blurRadius: 22,
                  offset: const Offset(0, 14),
                ),
              ],
            ),
            child: const Icon(
              Icons.hub_rounded,
              size: 48,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _ring(double size, double alpha) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xff3D6FFF).withValues(alpha: alpha),
          width: 0.8,
        ),
      ),
    );
  }

  Widget _particle(double dx, double dy, double size) {
    return Transform.translate(
      offset: Offset(dx, dy),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xff4A7AFF).withValues(alpha: 0.70),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff3D6FFF).withValues(alpha: 0.50),
              blurRadius: 4,
            ),
          ],
        ),
      ),
    );
  }
}
