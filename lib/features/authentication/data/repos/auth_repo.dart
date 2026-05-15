import 'package:ai_eru_tawasol/features/authentication/data/models/auth_user_model.dart';

abstract class AuthRepo {
  Future<AuthUserModel> login({
    required String email,
    required String password,
  });

  Future<void> forgetPassword({required String email});

  Future<void> verifyOtp({required String email, required String code});

  Future<void> resetPassword({
    required String email,
    required String newPassword,
  });
}
