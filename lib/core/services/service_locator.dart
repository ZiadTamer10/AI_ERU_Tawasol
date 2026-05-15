import 'package:ai_eru_tawasol/features/announcement/data/repos/announ_repo_impl.dart';
import 'package:ai_eru_tawasol/features/chat/data/repos/chat_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ChatRepoImpl>(ChatRepoImpl());
  getIt.registerSingleton<AnnounRepoImpl>(AnnounRepoImpl());
}
