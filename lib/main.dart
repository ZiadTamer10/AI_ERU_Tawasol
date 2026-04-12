import 'package:ai_eru_tawasol/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AiEruTawasol());
}

class AiEruTawasol extends StatelessWidget {
  const AiEruTawasol({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashView());
  }
}
