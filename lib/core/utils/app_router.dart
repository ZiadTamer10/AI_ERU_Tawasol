import 'package:ai_eru_tawasol/core/utils/service_locator.dart';
import 'package:ai_eru_tawasol/features/authentication/data/repos/auth_repo_impl.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/manager/forget_password_cubit/forget_password_cubit.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/manager/login_cubit/login_cubit.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/forget_password_view.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/login_view.dart';
import 'package:ai_eru_tawasol/features/home/presentation/view/home_view.dart';
import 'package:ai_eru_tawasol/features/onboarding/presentation/view/on_boarding_view.dart';
import 'package:ai_eru_tawasol/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kLoginView = '/loginView';
  static const kOnBoardingView = '/onBoardingView';
  static const kForgetPasswordView = '/forgetPasswordView';
  static const kHomeView = '/homeView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => OnBoardingView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => BlocProvider(
          create: (context) => LoginCubit(getIt.get<AuthRepoImpl>()),
          child: LoginView(),
        ),
      ),
      GoRoute(
        path: kForgetPasswordView,
        builder: (context, state) => BlocProvider(
          create: (context) => ForgetPasswordCubit(getIt.get<AuthRepoImpl>()),
          child: ForgetPasswordView(),
        ),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
    ],
  );
}
