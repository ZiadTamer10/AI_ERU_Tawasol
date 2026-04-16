import 'package:ai_eru_tawasol/core/utils/auth_services.dart';
import 'package:ai_eru_tawasol/core/utils/errors/auth_failure.dart';
import 'package:ai_eru_tawasol/features/authentication/data/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthServices authServices;

  AuthRepoImpl(this.authServices);

  @override
  Future<Either<AuthFailure, User>> login({
    required String email,
    required String password,
  }) async {
    try {
      var user = await authServices.login(email: email, password: password);
      if (user == null) {
        return left(UnknownAuthFailure('Authentication failed'));
      }
      return right(user);
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.fromFirebaseAuthException(e));
    } catch (e) {
      return left(AuthFailure.fromException(e));
    }
  }
}
