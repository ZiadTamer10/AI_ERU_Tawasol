import 'package:ai_eru_tawasol/features/announcement/data/mock/announ_mock_data.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/data/repos/announ_repo.dart';

class AnnounRepoImpl implements AnnounRepo {
  @override
  Future<List<Announcement>> getAllAnnouncements() async {
    await Future.delayed(const Duration(milliseconds: 900));
    return mockAnnouncements;
  }

  @override
  Future<List<Announcement>> getMyAnnouncements() async {
    await Future.delayed(const Duration(milliseconds: 900));
    return myMockAnnouncements;
  }

  @override
  Future<List<Announcement>> getAdminAnnouncements() async {
    await Future.delayed(const Duration(milliseconds: 900));
    return adminMockAnnouncements;
  }
}
