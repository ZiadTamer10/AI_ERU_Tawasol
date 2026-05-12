import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';

abstract class AnnounRepo {
  Future<List<Announcement>> getAllAnnouncements();
  Future<List<Announcement>> getMyAnnouncements();
  Future<List<Announcement>> getAdminAnnouncements();
}
