import 'package:ai_eru_tawasol/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding1ViewBody extends StatelessWidget {
  const OnBoarding1ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffD9D9D9),
                  minimumSize: Size(25, 25),
                ),
                child: Text(
                  'SKIP',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        SvgPicture.asset(AssetsData.onBoarding1),
      ],
    );
  }
}
