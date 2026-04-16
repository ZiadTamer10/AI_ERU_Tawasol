import 'package:ai_eru_tawasol/core/errors/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  Future<Either<AuthFailure, User>> login({
    required String email,
    required String password,
  });
}
