import 'package:flutter/material.dart';

class WhiteBackButton extends StatelessWidget {
  const WhiteBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_rounded,
          color: Colors.white, size: 20),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
