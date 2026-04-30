import 'package:ai_eru_tawasol/core/services/service_locator.dart';
import 'package:ai_eru_tawasol/features/announcements/presentation/view/announcement_details_view.dart';
import 'package:ai_eru_tawasol/features/authentication/data/repos/auth_repo_impl.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/manager/forget_password_cubit/forget_password_cubit.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/manager/login_cubit/login_cubit.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/forget_password_view.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/login_view.dart';
import 'package:ai_eru_tawasol/features/cousres/presentation/view/course_details_view.dart';
import 'package:ai_eru_tawasol/features/home/presentation/view/home_view.dart';
import 'package:ai_eru_tawasol/features/onboarding/presentation/view/on_boarding_view.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/about_me_view.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/change_password_view.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/contact_us_view.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/language_view.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/our_mission_view.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/profile_view.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/theme_mode_view.dart';
import 'package:ai_eru_tawasol/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kLoginView = '/loginView';
  static const kOnBoardingView = '/onBoardingView';
  static const kForgetPasswordView = '/forgetPasswordView';
  static const kHomeView = '/homeView';
  static const kAnnouncementDetailsView = '/announcementDetailsView';
  static const kCourseDetailsView = '/courseDetailsView';
  static const kProfileView = '/profileView';
  static const kChangePasswordView = '/changePasswordView';
  static const kThemeModeView = '/themeModeView';
  static const kLanguageView = '/languageView';
  static const kAboutMeView = '/aboutMeView';
  static const kOurMissionView = '/ourMissionView';
  static const kContactUsView = '/contactUsView';

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
      GoRoute(
        path: kAnnouncementDetailsView,
        builder: (context, state) => AnnouncementDetailsView(),
      ),
      GoRoute(
        path: kCourseDetailsView,
        builder: (context, state) => CourseDetailsView(),
      ),
      GoRoute(path: kProfileView, builder: (context, state) => ProfileView()),
      GoRoute(
        path: kChangePasswordView,
        builder: (context, state) => ChangePasswordView(),
      ),
      GoRoute(
        path: kThemeModeView,
        builder: (context, state) => ThemeModeView(),
      ),
      GoRoute(path: kLanguageView, builder: (context, state) => LanguageView()),
      GoRoute(path: kAboutMeView, builder: (context, state) => AboutMeView()),
      GoRoute(
        path: kOurMissionView,
        builder: (context, state) => OurMissionView(),
      ),
      GoRoute(
        path: kContactUsView,
        builder: (context, state) => ContactUsView(),
      ),
    ],
  );
}
