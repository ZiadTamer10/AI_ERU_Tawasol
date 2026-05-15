import 'package:ai_eru_tawasol/features/authentication/data/models/auth_user_model.dart';
import 'package:ai_eru_tawasol/features/authentication/data/repos/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._repo) : super(LoginInitial());

  final AuthRepo _repo;

  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    try {
      final user = await _repo.login(email: email, password: password);
      if (isClosed) return;
      emit(LoginSuccess(user));
    } catch (e) {
      if (isClosed) return;
      emit(LoginFailure(e.toString()));
    }
  }
}
