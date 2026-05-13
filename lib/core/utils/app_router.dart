import 'package:ai_eru_tawasol/core/services/service_locator.dart';
import 'package:ai_eru_tawasol/core/shared/models/content_display_item.dart';
import 'package:ai_eru_tawasol/core/shared/views/content_details/content_details_view.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/add_announ_view.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/course_details_view.dart';
import 'package:ai_eru_tawasol/features/authentication/data/repos/auth_repo_impl.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/manager/forget_password_cubit/forget_password_cubit.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/manager/login_cubit/login_cubit.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/forget_password_view.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/view/login_view.dart';
import 'package:ai_eru_tawasol/features/home/presentation/view/home_view.dart';
import 'package:ai_eru_tawasol/features/onboarding/presentation/view/on_boarding_view.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/about_me_view.dart';
import 'package:ai_eru_tawasol/features/profile/presentation/view/app_version_view.dart';
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
  static const kProfileView = '/profileView';
  static const kChangePasswordView = '/changePasswordView';
  static const kThemeModeView = '/themeModeView';
  static const kLanguageView = '/languageView';
  static const kAboutMeView = '/aboutMeView';
  static const kOurMissionView = '/ourMissionView';
  static const kContactUsView = '/contactUsView';
  static const kAppVersionView = '/appVersionView';
  static const kAddAnnouncementView = '/addAnnouncementView';
  static const kCourseDetailsView = '/courseDetailsView';
  static const kContentDetailsView = '/contentDetailsView';

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
      GoRoute(
        path: kAppVersionView,
        builder: (context, state) => AppVersionView(),
      ),
      GoRoute(
        path: kAddAnnouncementView,
        builder: (context, state) =>
            AddAnnounView(role: state.extra as AnnounRole),
      ),
      GoRoute(
        path: kCourseDetailsView,
        builder: (context, state) =>
            CourseDetailsView(args: state.extra as CourseDetailsArgs),
      ),
      GoRoute(
        path: kContentDetailsView,
        builder: (context, state) =>
            ContentDetailsView(item: state.extra as ContentDisplayItem),
      ),
    ],
  );
}
