import 'package:ai_eru_tawasol/core/services/auth_services.dart';
import 'package:ai_eru_tawasol/features/authentication/data/repos/auth_repo_impl.dart';
import 'package:ai_eru_tawasol/features/chat/data/repos/chat_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<AuthServices>(AuthServices());
  getIt.registerSingleton<AuthRepoImpl>(
    AuthRepoImpl(getIt.get<AuthServices>()),
  );
  getIt.registerSingleton<ChatRepoImpl>(ChatRepoImpl());
}
