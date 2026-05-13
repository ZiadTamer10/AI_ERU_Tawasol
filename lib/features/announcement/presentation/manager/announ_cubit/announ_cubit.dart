import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/data/repos/announ_repo.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/manager/announ_cubit/announ_tab.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

export 'package:ai_eru_tawasol/features/announcement/presentation/manager/announ_cubit/announ_tab.dart';

part 'announ_state.dart';

class AnnounCubit extends Cubit<AnnounState> {
  AnnounCubit(this._repo) : super(AnnounInitial());

  final AnnounRepo _repo;

  Future<void> loadForStudent() async {
    emit(AnnounLoading());
    try {
      final all = await _repo.getAllAnnouncements();
      if (isClosed) return;
      emit(AnnounLoaded(primary: all));
    } catch (e) {
      if (isClosed) return;
      emit(AnnounError(e.toString()));
    }
  }

  Future<void> loadForDoctor() async {
    emit(AnnounLoading());
    try {
      final results = await Future.wait([
        _repo.getMyAnnouncements(),
        _repo.getAdminAnnouncements(),
      ]);
      if (isClosed) return;
      emit(AnnounLoaded(
        primary: results[0],
        secondary: results[1],
        activeTab: AnnounTab.mine,
      ));
    } catch (e) {
      if (isClosed) return;
      emit(AnnounError(e.toString()));
    }
  }

  Future<void> loadForAdmin() async {
    emit(AnnounLoading());
    try {
      final admin = await _repo.getAdminAnnouncements();
      if (isClosed) return;
      emit(AnnounLoaded(primary: admin));
    } catch (e) {
      if (isClosed) return;
      emit(AnnounError(e.toString()));
    }
  }

  Future<void> loadForRole(AnnounRole role) async {
    switch (role) {
      case AnnounRole.student:
        return loadForStudent();
      case AnnounRole.doctor:
        return loadForDoctor();
      case AnnounRole.admin:
        return loadForAdmin();
    }
  }

  Future<void> refresh(AnnounRole role) => loadForRole(role);

  void switchTab(AnnounTab tab) {
    final current = state;
    if (current is! AnnounLoaded) return;
    emit(current.copyWith(
        activeTab: tab, activeFilter: null, clearFilter: true));
  }

  void filterByType(AnnouncementType? type) {
    final current = state;
    if (current is! AnnounLoaded) return;
    emit(current.copyWith(
      activeFilter: type,
      clearFilter: type == null,
    ));
  }
}
