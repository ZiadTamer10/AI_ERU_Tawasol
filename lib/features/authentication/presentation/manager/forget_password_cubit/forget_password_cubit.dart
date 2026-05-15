import 'package:ai_eru_tawasol/features/authentication/data/repos/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this._repo) : super(ForgetPasswordInitial());

  final AuthRepo _repo;

  Future<void> forgetPassword({required String email}) async {
    emit(ForgetPasswordLoading());
    try {
      await _repo.forgetPassword(email: email);
      if (isClosed) return;
      emit(ForgetPasswordSuccess(email));
    } catch (e) {
      if (isClosed) return;
      emit(ForgetPasswordFailure(e.toString()));
    }
  }
}
