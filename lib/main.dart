import 'package:ai_eru_tawasol/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const AiEruTawasol());
}

class AiEruTawasol extends StatelessWidget {
  const AiEruTawasol({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(textTheme: GoogleFonts.plusJakartaSansTextTheme()),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
