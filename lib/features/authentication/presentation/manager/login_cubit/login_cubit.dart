import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'login_state.dart';

class LoginCubitCubit extends Cubit<LoginState> {
  LoginCubitCubit() : super(LoginCubitInitial());
}
