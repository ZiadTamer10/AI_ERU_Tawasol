import 'package:ai_eru_tawasol/core/utils/app_router.dart';
import 'package:ai_eru_tawasol/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const AiEruTawasol());
}

class AiEruTawasol extends StatelessWidget {
  const AiEruTawasol({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(textTheme: GoogleFonts.plusJakartaSansTextTheme()),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
