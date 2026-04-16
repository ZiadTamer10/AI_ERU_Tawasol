import 'package:ai_eru_tawasol/core/utils/app_router.dart';
import 'package:ai_eru_tawasol/core/utils/local_storage_services.dart';
import 'package:ai_eru_tawasol/features/splash/presentation/view/widgets/logo_and_title.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  void navigate() async {
    await Future.delayed(const Duration(seconds: 2));

    final user = FirebaseAuth.instance.currentUser;
    final rememberMe = await LocalStorageService().getRememberMe();

    if (!mounted) return;

    if (user != null && rememberMe) {
      /// ✅ يدخل عادي
      context.go(AppRouter.kDoctorHomeView);
    } else {
      /// ❌ اعمل logout
      await FirebaseAuth.instance.signOut();

      context.go(AppRouter.kOnBoardingView1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: backgroundDecoration(),
      child: const LogoAndTitle(),
    );
  }

  BoxDecoration backgroundDecoration() {
    return const BoxDecoration(
      gradient: RadialGradient(
        center: Alignment.center,
        radius: 0.8,
        colors: [
          Color(0xFF66B2FF),
          Color(0xFF2E7BFF),
          Color(0xFF0B3D91),
          Color(0xFF001220),
        ],
        stops: [0.0, 0.3, 0.6, 1.0],
      ),
    );
  }
}
