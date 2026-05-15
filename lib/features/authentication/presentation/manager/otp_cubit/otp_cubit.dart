import 'package:ai_eru_tawasol/features/authentication/data/repos/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit(this._repo) : super(OtpInitial());

  final AuthRepo _repo;

  Future<void> verifyOtp({
    required String email,
    required String code,
  }) async {
    emit(OtpLoading());
    try {
      await _repo.verifyOtp(email: email, code: code);
      if (isClosed) return;
      emit(OtpSuccess(email));
    } catch (e) {
      if (isClosed) return;
      emit(OtpFailure(e.toString()));
    }
  }

  Future<void> resendOtp({required String email}) async {
    emit(OtpResending());
    await Future.delayed(const Duration(milliseconds: 800));
    if (isClosed) return;
    emit(OtpInitial());
  }
}
